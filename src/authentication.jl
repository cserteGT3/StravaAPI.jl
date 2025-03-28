export visitlink
export refreshtoken

CLIENT_SECRETS = Ref(Dict{SubString{String}, SubString{String}}())
CLIENT_CODE = Ref(string(""))
CLIENT_TOKENS = Ref(Dict{SubString{String}, SubString{String}}())

"""
    loadclientsecrets(fname="client.secret")

Load client secrets (`id` and `secret`) from file.
These are constants.
The file should contain:
```txt
client_id=...
client_secret=...
```
"""
function loadclientsecrets(fname="client.secret")
    if ! isfile(fname)
        throw(ErrorException("""File "$fname" not found."""))
    end
    lines = readlines(fname)
    CLIENT_SECRETS[] = Dict(split.(lines, Ref("=")))
    return nothing
end

"""
    loadcode(fname="code.secret")

Load single code from file.
The file should only contain the code received after [`visitlink`](@ref).
This code changes after every authorization requested via that link.
"""
function loadcode(fname="code.secret")
    if ! isfile(fname)
        throw(ErrorException("""File "$fname" not found."""))
    end
    CLIENT_CODE[] = read(fname, String)
    return nothing
end

"""
    loadclienttokens(fname="tokens.secret")

Load access token and refresh tokens from file.
This file should be manipulated only by the
[`requesttoken`](@ref) and [`refreshtoken`](@ref) functions.
The file contains:
```txt
access_token=...
refresh_token=...
```
"""
function loadclienttokens(fname="tokens.secret")
    if ! isfile(fname)
        throw(ErrorException("""File "$fname" not found."""))
    end
    lines = readlines(fname)
    CLIENT_TOKENS[] = Dict(split.(lines, Ref("=")))
    return nothing
end

"""
    visitlink()

Show the to-be-visited link for Strava authentication.
"""
function visitlink()
    loadclientsecrets()
    clid = CLIENT_SECRETS[]["client_id"]
    println("http://www.strava.com/oauth/authorize?client_id=$clid&response_type=code&redirect_uri=http://localhost/exchange_token&approval_prompt=auto&scope=activity:read_all")
    println("After authorization, copy value of `code` to the `code.secret` file!")
    return nothing
end

"""
    requesttoken()

Load the code given by the authorization from file with [`loadcode`](@ref), then request
an access token.
Save the received tokens to `tokens.secret` file.
"""
function requesttoken()
    loadcode()
    loadclientsecrets()
    form = HTTP.Form(Dict("client_id" => CLIENT_SECRETS[]["client_id"],
        "client_secret" => CLIENT_SECRETS[]["client_secret"],
        "code" => CLIENT_CODE[],
        "grant_type" => "authorization_code"))
    r = HTTP.post("https://www.strava.com/oauth/token", [], form; status_exception=false)
    b = r2j(r.body)
    if r.status == 200
        client_token = b[:access_token]
        refresh_token = b[:refresh_token]
        open("tokens.secret", "w") do io
            println(io,"access_token=", client_token)
            print(io,"refresh_token=", refresh_token)
        end
        loadclienttokens()
        @info "Successfully requested client token, loaded into memory, wrote to file."
    else
        @warn "Could not request client token, because error."
    end
    return b
end

"""
    refreshtoken()

Use the refresh token to get a new access token.
Save the received tokens to `tokens.secret` file.
"""
function refreshtoken()
    if ! isfile("tokens.secret")
        @warn "`tokens.secret` file does not exist, use `requesttoken()` first!"
        return nothing
    end
    loadclienttokens()
    loadclientsecrets()
    form = HTTP.Form(Dict("client_id" => CLIENT_SECRETS[]["client_id"],
        "client_secret" => CLIENT_SECRETS[]["client_secret"],
        "refresh_token" => CLIENT_TOKENS[]["refresh_token"],
        "grant_type" => "refresh_token"))
    r = HTTP.post("https://www.strava.com/oauth/token", [], form; status_exception=false)
    b = r2j(r.body)
    if r.status == 200
        client_token = b[:access_token]
        refresh_token = b[:refresh_token]
        open("tokens.secret", "w") do io
            println(io,"access_token=", client_token)
            print(io,"refresh_token=", refresh_token)
        end
        loadclienttokens()
        @info "Successfully requested refresh token, loaded into memory, wrote to file."
    else
        @warn "Could not request refresh token, because error."
    end
    return b
end

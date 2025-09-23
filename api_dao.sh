#!/bin/bash

export BASE_URL=https://$DAO_HOSTNAME
export TOKEN=
export did=

# export rsp=$(curl --insecure -s $BASE_URL/api/record/create \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -H "Authorization: Bearer "$TOKEN"" \
#     -d '{
#             "repo": "'$did'",
#             "section_id": 0,
#             "title": "first post",
#             "text": "Hello, world!"
#         }' | jq .
# )
# echo "
# --- /api/record/create ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/post/list \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -d '{
#             "limit": 1,
#             "cursor":"1757382443"
#         }'
# )
# echo "
# --- /api/post/list ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/post/top \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -d '{
#             "section_id": "1"
#         }'
# )
# echo "
# --- /api/post/top ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/post/detail?uri= \
#     -X GET \
#     -H "Content-Type: application/json"
# )
# echo "
# --- /api/post/detail ---
# response = $rsp"

export rsp=$(curl --insecure -s $BASE_URL/api/reply/list \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{
            "comment": "at://did:web5:ted6fucylsy4kffqps2ombhaaf4k2jw4/app.dao.post/3lwdzv3afks2k",
            "limit": 5,
            "corsur": ""
        }'
)
echo "
--- /api/reply/list ---
response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/section/detail?id=1 \
#     -X GET \
#     -H "Content-Type: application/json"
# )
# echo "
# --- /api/section/detail ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL'/api/section/list?repo=did:web5:5todaearszbwxyrluncvvx6by5ofuauj' \
#     -X GET \
#     -H "Content-Type: application/json"
# )
# echo "
# --- /api/section/list ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL'/api/repo/profile?repo=did:web5:vcm3vb7wk5uxdj7f4nsweowkokmwmdyv' \
#     -X GET \
#     -H "Content-Type: application/json"
# )
# echo "
# --- /api/repo/profile ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/post/replied \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -d '{
#             "repo": "did:web5:wr2zzk7ljy64swa6akrmi7zxwysztvil",
#             "limit": 20,
#             "cursor": "2025-08-12 05:25:37"
#         }'
# )
# echo "
# --- /api/post/replied ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL'/api/repo/login_info?repo=did:web5:vcm3vb7wk5uxdj7f4nsweowkokmwmdyv' \
#     -X GET \
#     -H "Content-Type: application/json"
# )
# echo "
# --- /api/repo/profile ---
# response = $rsp"

# export rsp=$(curl --insecure -s $BASE_URL/api/like/list \
#     -X POST \
#     -H "Content-Type: application/json" \
#     -d '{
#             "to": "at://did:web5:cywsrenljk2b7akmr2zuoawnbwshnz6o/app.dao.post/3lychgs5zbk2p",
#             "limit": 30,
#             "cursor": "2025-08-12 05:25:37"
#         }'
# )
# echo "
# --- /api/like/list ---
# response = $rsp"
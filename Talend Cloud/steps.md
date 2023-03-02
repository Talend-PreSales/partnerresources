# Environment Setup APIs

To proceed with the following environment setup, a service account must be first created. See the [documentation](README.md).

## Create a New Group

Follow the [new group](https://api.talend.com/apis/identities-management/2021-03/#operation_register-a-new-group) to create a new role.

The `POST` payload should look like:

```
{"name":"Group - ACME Partner - WS 14 May"}
```

The response should look like:

```
{
    "id": "f1f9e3af-25d0-4a4a-9249-fef8b2e64135",
    "name": "Group - ACME Partner - WS 14 May",
    "lastModified": "2022-04-14T21:09:52.663+00:00"
}
```

The `id` will be used when creating a user.

## Create a New Role

Follow the [documentation](https://api.talend.com/apis/identities-management/2021-03/#operation_register-a-new-role) to create a new role. You can create a template role via the UI first, then list its permissions by [getting a role by its id](https://api.talend.com/apis/identities-management/2021-03/?#operation_get-a-role-by-its-id).

The `POST` payload should look like:

```
{
    "name": "Role - ACME Partner - WS 14 May",
    "permissions": [
        "CONNECTION_CREATE",
        "CONNECTION_DELETE",
        "CONNECTION_READ",
        "CONNECTION_SHARE",
        "CONNECTION_UPDATE",
        "CRAWLING_CREATE",
        "CRAWLING_DELETE",
        "CRAWLING_READ",
        "CRAWLING_UPDATE",
        "CUSTOM_ATTRIBUTE_CREATE",
        "CUSTOM_ATTRIBUTE_DELETE",
        "CUSTOM_ATTRIBUTE_READ",
        "CUSTOM_ATTRIBUTE_UPDATE",
        "DATASET_ADVANCED_SEARCH",
        "DATASET_API_MANAGE",
        "DATASET_API_VIEW",
        "DATASET_ATTRIBUTES_MANAGE",
        "DATASET_CERTIFY",
        "DATASET_CREATE",
        "DATASET_DELETE",
        "DATASET_DOWNLOAD",
        "DATASET_READ",
        "DATASET_SAMPLE_UPDATE",
        "DATASET_SCHEMA_UPDATE",
        "DATASET_SHARE",
        "DATASET_TAGS_MANAGE",
        "DATASET_UPDATE",
        "RULE_CREATE",
        "RULE_DELETE",
        "RULE_EDIT",
        "RULE_VIEW",
        "STREAM_CREATE",
        "STREAM_DELETE",
        "STREAM_EXPORT",
        "STREAM_IMPORT",
        "STREAM_LOGS_VIEW",
        "STREAM_METRICS_VIEW",
        "STREAM_PREVIEW",
        "STREAM_READ",
        "STREAM_SHARE",
        "STREAM_START",
        "STREAM_STOP",
        "STREAM_UPDATE",
        "TAPID_DEFINITION_MANAGE",
        "TAPID_DEFINITION_SHARE",
        "TAPID_PORTAL_MANAGE",
        "TAPIT_PROJECT_MANAGE",
        "TAPIT_PROJECT_SHARE",
        "TDP_BASIC",
        "TDP_DATASET_CERTIFY",
        "TDP_DATASET_PERFORM_LIVE",
        "TDP_FULL_RUN_PERFORM",
        "TDP_PREP_VERSION_CREATE",
        "TDP_TCOMP_USE",
        "TDQ_SEMANTIC_TYPE_CREATE",
        "TDQ_SEMANTIC_TYPE_DELETE",
        "TDQ_SEMANTIC_TYPE_EDIT",
        "TDQ_SEMANTIC_TYPE_LIST",
        "TDQ_SEMANTIC_TYPE_PUBLISH",
        "TDQ_SEMANTIC_TYPE_VIEW",
        "TDS_ASSIGNED_TASK_ASSIGN",
        "TDS_ASSIGNED_TASK_DATA_UPDATE",
        "TDS_ASSIGNED_TASK_METADATA_UPDATE",
        "TDS_ASSIGNED_TASK_READ",
        "TDS_CAMPAIGN_CREATE",
        "TDS_CAMPAIGN_DELETE",
        "TDS_CAMPAIGN_LIST",
        "TDS_CAMPAIGN_READ",
        "TDS_CAMPAIGN_UPDATE",
        "TDS_SCHEMA_CREATE",
        "TDS_SCHEMA_DELETE",
        "TDS_SCHEMA_LIST",
        "TDS_SCHEMA_READ",
        "TDS_SCHEMA_UPDATE",
        "TDS_TASK_ASSIGN",
        "TDS_TASK_CREATE",
        "TDS_TASK_DELETE",
        "TDS_TASK_HISTORY_DELETE",
        "TDS_TASK_HISTORY_READ",
        "TDS_TASK_METADATA_UPDATE",
        "TDS_TASK_READ",
        "TDS_TASK_READ_BY_EXTERNAL_ID",
        "TDS_TASK_UPDATE",
        "TDS_UNASSIGNED_TASK_ASSIGN",
        "TDS_UNASSIGNED_TASK_READ",
        "TDS_USERS_READ"
    ]
}
```

The response should look like:

```
{
    "id": "0f491096-5a25-4367-aa5f-e4bdecb668c7",
    "meta": {
        "created": "2022-04-15T13:43:22.179+00:00",
        "lastModified": "2022-04-15T13:43:22.179+00:00"
    },
    "name": "Role - ACME Partner - WS 14 May",
    "permissions": [
        "DATASET_CERTIFY",
        "TDS_SCHEMA_DELETE",
        "TDS_SCHEMA_UPDATE",
        "TDS_TASK_READ",
        "TDP_DATASET_PERFORM_LIVE",
        "STREAM_UPDATE",
        "TDS_SCHEMA_LIST",
        "TDS_TASK_CREATE",
        "TDP_PREP_VERSION_CREATE",
        "TDQ_SEMANTIC_TYPE_PUBLISH",
        "RULE_CREATE",
        "CRAWLING_READ",
        "STREAM_IMPORT",
        "STREAM_SHARE",
        "TDS_ASSIGNED_TASK_READ",
        "STREAM_DELETE",
        "DATASET_API_VIEW",
        "DATASET_READ",
        "STREAM_START",
        "DATASET_UPDATE",
        "RULE_VIEW",
        "TDP_TCOMP_USE",
        "CONNECTION_UPDATE",
        "CRAWLING_DELETE",
        "TAPID_DEFINITION_MANAGE",
        "TAPIT_PROJECT_SHARE",
        "TDS_CAMPAIGN_CREATE",
        "TDQ_SEMANTIC_TYPE_VIEW",
        "CONNECTION_CREATE",
        "CONNECTION_READ",
        "CONNECTION_SHARE",
        "DATASET_API_MANAGE",
        "TDS_UNASSIGNED_TASK_ASSIGN",
        "TDS_SCHEMA_READ",
        "CUSTOM_ATTRIBUTE_DELETE",
        "TDS_TASK_ASSIGN",
        "DATASET_SCHEMA_UPDATE",
        "TDS_TASK_HISTORY_DELETE",
        "TDS_TASK_METADATA_UPDATE",
        "RULE_DELETE",
        "TDP_DATASET_CERTIFY",
        "DATASET_ADVANCED_SEARCH",
        "DATASET_TAGS_MANAGE",
        "CRAWLING_CREATE",
        "TDS_ASSIGNED_TASK_ASSIGN",
        "CUSTOM_ATTRIBUTE_CREATE",
        "STREAM_EXPORT",
        "TDS_TASK_UPDATE",
        "DATASET_SHARE",
        "STREAM_CREATE",
        "STREAM_LOGS_VIEW",
        "RULE_EDIT",
        "TDS_SCHEMA_CREATE",
        "TDS_ASSIGNED_TASK_DATA_UPDATE",
        "STREAM_METRICS_VIEW",
        "DATASET_CREATE",
        "TDQ_SEMANTIC_TYPE_DELETE",
        "DATASET_ATTRIBUTES_MANAGE",
        "TDQ_SEMANTIC_TYPE_LIST",
        "TDS_CAMPAIGN_DELETE",
        "TDS_TASK_DELETE",
        "TDQ_SEMANTIC_TYPE_CREATE",
        "TAPIT_PROJECT_MANAGE",
        "TDS_TASK_READ_BY_EXTERNAL_ID",
        "TDS_CAMPAIGN_UPDATE",
        "TDS_ASSIGNED_TASK_METADATA_UPDATE",
        "TAPID_DEFINITION_SHARE",
        "TDS_TASK_HISTORY_READ",
        "DATASET_SAMPLE_UPDATE",
        "STREAM_READ",
        "DATASET_DELETE",
        "TDS_CAMPAIGN_LIST",
        "CRAWLING_UPDATE",
        "TAPID_PORTAL_MANAGE",
        "TDQ_SEMANTIC_TYPE_EDIT",
        "CUSTOM_ATTRIBUTE_READ",
        "TDS_CAMPAIGN_READ",
        "DATASET_DOWNLOAD",
        "TDS_UNASSIGNED_TASK_READ",
        "STREAM_STOP",
        "CONNECTION_DELETE",
        "CUSTOM_ATTRIBUTE_UPDATE",
        "STREAM_PREVIEW",
        "TDS_USERS_READ",
        "TDP_FULL_RUN_PERFORM",
        "TDP_BASIC"
    ]
}
```

The `id` will be used when creating a user.

## Create a User, Assign Role

Follow the [documentation](https://api.talend.com/apis/identities-management/2021-03/?#operation_create-a-new-user) to create a new role and assign to roles.

The `POST` payload should look like:

```
{
   "login":"ws0126.user.01",
   "email":"workshop.user@email.com",
   "firstName":"Workshop",
   "lastName":"User",
   "active":true,
   "roleIds":
      ["0f491096-5a25-4367-aa5f-e4bdecb668c7","f0ceb83c-6bcd-485e-ae99-054370cbbc4c"]
   ,
   "applications":[
      "TDQ",
      "TAPIT",
      "TAPID",
      "TDP",
      "TDS",
      "TDC",
      "DSS",
      "TRR",
      "TMC",
      "DATASETS",
      "STUDIO"
   ]
}
```

The response should look like:

```
{
    "id": "dc7f4b10-8c2a-472b-b6d1-ede49341c309",
    "login": "ws0126.user.01",
    "firstName": "Workshop",
    "lastName": "User",
    "name": "Workshop User",
    "email": "norbert.krupa+ws0126@gmail.com",
    "preferredLanguage": "en",
    "timezone": "Etc/UTC",
    "active": true,
    "roles": [
        {
            "id": "0f491096-5a25-4367-aa5f-e4bdecb668c7",
            "name": "Role - ACME Partner - WS 14 May",
            "permissions": [
                "DATASET_CERTIFY",
                "TDS_SCHEMA_UPDATE",
                "TDS_SCHEMA_DELETE",
                "TDS_TASK_READ",
                "TDP_DATASET_PERFORM_LIVE",
                "TDS_SCHEMA_LIST",
                "STREAM_UPDATE",
                "TDS_TASK_CREATE",
                "TDP_PREP_VERSION_CREATE",
                "TDQ_SEMANTIC_TYPE_PUBLISH",
                "RULE_CREATE",
                "CRAWLING_READ",
                "STREAM_IMPORT",
                "STREAM_SHARE",
                "TDS_ASSIGNED_TASK_READ",
                "STREAM_DELETE",
                "DATASET_API_VIEW",
                "DATASET_READ",
                "STREAM_START",
                "DATASET_UPDATE",
                "RULE_VIEW",
                "TDP_TCOMP_USE",
                "CONNECTION_UPDATE",
                "CRAWLING_DELETE",
                "TAPIT_PROJECT_SHARE",
                "TAPID_DEFINITION_MANAGE",
                "TDS_CAMPAIGN_CREATE",
                "TDQ_SEMANTIC_TYPE_VIEW",
                "CONNECTION_CREATE",
                "CONNECTION_READ",
                "DATASET_API_MANAGE",
                "CONNECTION_SHARE",
                "TDS_UNASSIGNED_TASK_ASSIGN",
                "TDS_SCHEMA_READ",
                "CUSTOM_ATTRIBUTE_DELETE",
                "TDS_TASK_ASSIGN",
                "DATASET_SCHEMA_UPDATE",
                "TDS_TASK_HISTORY_DELETE",
                "TDS_TASK_METADATA_UPDATE",
                "RULE_DELETE",
                "TDP_DATASET_CERTIFY",
                "DATASET_ADVANCED_SEARCH",
                "DATASET_TAGS_MANAGE",
                "CRAWLING_CREATE",
                "TDS_ASSIGNED_TASK_ASSIGN",
                "CUSTOM_ATTRIBUTE_CREATE",
                "STREAM_EXPORT",
                "TDS_TASK_UPDATE",
                "DATASET_SHARE",
                "STREAM_LOGS_VIEW",
                "STREAM_CREATE",
                "RULE_EDIT",
                "TDS_SCHEMA_CREATE",
                "TDS_ASSIGNED_TASK_DATA_UPDATE",
                "STREAM_METRICS_VIEW",
                "TDQ_SEMANTIC_TYPE_DELETE",
                "DATASET_CREATE",
                "DATASET_ATTRIBUTES_MANAGE",
                "TDQ_SEMANTIC_TYPE_LIST",
                "TDS_CAMPAIGN_DELETE",
                "TDS_TASK_DELETE",
                "TDQ_SEMANTIC_TYPE_CREATE",
                "TAPIT_PROJECT_MANAGE",
                "TDS_TASK_READ_BY_EXTERNAL_ID",
                "TDS_CAMPAIGN_UPDATE",
                "TDS_ASSIGNED_TASK_METADATA_UPDATE",
                "TDS_TASK_HISTORY_READ",
                "TAPID_DEFINITION_SHARE",
                "STREAM_READ",
                "DATASET_SAMPLE_UPDATE",
                "DATASET_DELETE",
                "TDS_CAMPAIGN_LIST",
                "CRAWLING_UPDATE",
                "TAPID_PORTAL_MANAGE",
                "TDQ_SEMANTIC_TYPE_EDIT",
                "CUSTOM_ATTRIBUTE_READ",
                "TDS_CAMPAIGN_READ",
                "DATASET_DOWNLOAD",
                "TDS_UNASSIGNED_TASK_READ",
                "STREAM_STOP",
                "CUSTOM_ATTRIBUTE_UPDATE",
                "CONNECTION_DELETE",
                "TDS_USERS_READ",
                "STREAM_PREVIEW",
                "TDP_FULL_RUN_PERFORM",
                "TDP_BASIC"
            ]
        },
        {
            "id": "f0ceb83c-6bcd-485e-ae99-054370cbbc4c",
            "name": "Operator",
            "permissions": [
                "TMC_RUN_PROFILE_MANAGEMENT",
                "TMC_OPERATOR"
            ]
        }
    ],
    "accountId": "39c24e13-1f51-4be5-9c88-2cfa71651bae",
    "applications": [
        "TDQ",
        "TAPIT",
        "TAPID",
        "TDP",
        "TDS",
        "TDC",
        "DSS",
        "TRR",
        "TMC",
        "DATASETS"
    ],
    "lastModified": "2022-04-25T23:21:15.140+00:00"
}
```

The user will then receive an e-mail invitation and can set their password.

## Assign Users to Group

Follow the [documentation](https://api.talend.com/apis/identities-management/2021-03/#operation_assign-users-to-a-group-if-not-already-in-it) to add users to the group created above.

The `POST` payload should look like:

```
["8c5a2662-d00f-4ffa-87fe-0c6b18162690","5ebf674e-8e27-4b87-9987-3c5dde9ca858"]
```

Which is an array of users, posted to `https://api.us.cloud.talend.com/account/groups/2c4396f1-30e4-4fed-a4bf-170f7e72dc7b/users`

The response will be rather lengthy.

## Create an Environment
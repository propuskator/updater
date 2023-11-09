Проверка статуса обновления и апдейтера

GET `/updater/v1/status`

reponse:

```JSON
{
    "status": "UPDATING",
    "version": "2021-01-01-c45f9bf",
    "available_version": "2021-01-28-b85f9bd",
    "stage": "PULL_IMAGES"
}
```
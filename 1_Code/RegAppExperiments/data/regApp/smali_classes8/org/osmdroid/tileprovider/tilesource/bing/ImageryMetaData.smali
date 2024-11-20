.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;
.super Ljava/lang/Object;
.source "ImageryMetaData.java"


# static fields
.field private static final AUTH_RESULT_CODE:Ljava/lang/String; = "authenticationResultCode"

.field private static final AUTH_RESULT_CODE_VALID:Ljava/lang/String; = "ValidCredentials"

.field private static final ESTIMATED_TOTAL:Ljava/lang/String; = "estimatedTotal"

.field private static final RESOURCE:Ljava/lang/String; = "resources"

.field private static final RESOURCE_SETS:Ljava/lang/String; = "resourceSets"

.field private static final STATUS_CODE:Ljava/lang/String; = "statusCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 6
    .param p0, "a_jsonContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_4

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "jsonResult":Lorg/json/JSONObject;
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 39
    const-string v2, "ValidCredentials"

    const-string v3, "authenticationResultCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 44
    const-string v2, "resourceSets"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    .local v2, "resultsSet":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "estimatedTotal"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "resources"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    .local v3, "resource":Lorg/json/JSONObject;
    invoke-static {v3, v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v4

    return-object v4

    .line 50
    .end local v3    # "resource":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No resource found in json response"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No results set found in json response"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    .end local v2    # "resultsSet":Lorg/json/JSONArray;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authentication result code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    .end local v0    # "jsonResult":Lorg/json/JSONObject;
    .end local v1    # "statusCode":I
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "JSON to parse is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

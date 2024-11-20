.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
.super Ljava/lang/Object;
.source "ImageryMetaDataResource.java"


# static fields
.field private static final COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "imageHeight"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final IMAGE_URL_SUBDOMAINS:Ljava/lang/String; = "imageUrlSubdomains"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "imageWidth"

.field private static final ZOOM_MAX:Ljava/lang/String; = "ZoomMax"

.field private static final ZOOM_MIN:Ljava/lang/String; = "ZoomMin"


# instance fields
.field public copyright:Ljava/lang/String;

.field public m_imageHeight:I

.field public m_imageUrl:Ljava/lang/String;

.field public m_imageUrlSubdomains:[Ljava/lang/String;

.field public m_imageWidth:I

.field public m_isInitialised:Z

.field private m_subdomainsCounter:I

.field public m_zoomMax:I

.field public m_zoomMin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    .line 25
    const/16 v0, 0x100

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    .line 29
    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    .line 41
    const/16 v0, 0x16

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 52
    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    return-void
.end method

.method public static getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    .line 60
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    return-object v0
.end method

.method public static getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 6
    .param p0, "a_jsonObject"    # Lorg/json/JSONObject;
    .param p1, "parent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    .line 73
    .local v0, "result":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    if-eqz p0, :cond_6

    .line 76
    const-string v1, "copyright"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    .line 78
    const-string v1, "imageHeight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    .line 81
    :cond_0
    const-string v1, "imageWidth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    .line 84
    :cond_1
    const-string v1, "ZoomMin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    .line 87
    :cond_2
    const-string v1, "ZoomMax"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    .line 90
    :cond_3
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    .line 91
    if-eqz v1, :cond_4

    const-string v2, ".*?\\{.*?\\}.*?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v2, "\\{.*?\\}"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    .line 95
    :cond_4
    const-string v1, "imageUrlSubdomains"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 96
    .local v1, "subdomains":Lorg/json/JSONArray;
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v2, :cond_5

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 99
    iget-object v4, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_5
    iput-boolean v2, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 106
    return-object v0

    .line 74
    .end local v1    # "subdomains":Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "JSON to parse is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized getSubDomain()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    aget-object v2, v0, v1

    .line 120
    .local v2, "result":Ljava/lang/String;
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 121
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    goto :goto_0

    .line 123
    .end local p0    # "this":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-object v2

    .line 116
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

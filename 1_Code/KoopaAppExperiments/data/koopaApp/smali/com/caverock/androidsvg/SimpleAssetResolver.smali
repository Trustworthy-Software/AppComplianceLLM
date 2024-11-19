.class public Lcom/caverock/androidsvg/SimpleAssetResolver;
.super Lcom/caverock/androidsvg/SVGExternalFileResolver;
.source "SimpleAssetResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final supportedFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/caverock/androidsvg/SimpleAssetResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    .line 59
    const-string v1, "image/svg+xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "image/jpeg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "image/pjpeg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "image/x-windows-bmp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    nop

    .line 69
    const-string v1, "image/webp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 49
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGExternalFileResolver;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    .line 51
    return-void
.end method

.method private getAssetAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 155
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 156
    .local v1, "r":Ljava/io/Reader;
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 157
    .local v2, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    .line 159
    .local v4, "len":I
    :goto_0
    if-lez v4, :cond_0

    .line 160
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v6

    goto :goto_2

    .line 175
    :cond_1
    :goto_1
    nop

    .line 163
    :goto_2
    return-object v5

    .line 170
    .end local v1    # "r":Ljava/io/Reader;
    .end local v2    # "buffer":[C
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "len":I
    :catchall_0
    move-exception v1

    .line 171
    if-eqz v0, :cond_2

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 173
    :catch_1
    move-exception v2

    goto :goto_4

    .line 175
    :cond_2
    :goto_3
    nop

    :goto_4
    throw v1

    .line 165
    :catch_2
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 171
    if-eqz v0, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 173
    :catch_3
    move-exception v2

    goto :goto_6

    .line 175
    :cond_3
    :goto_5
    nop

    .line 167
    :goto_6
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public isFormatSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveCSSStyleSheet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SimpleAssetResolver;->getAssetAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontWeight"    # I
    .param p3, "fontStyle"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveFont("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".otf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 95
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    .local v0, "istream":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    .end local v0    # "istream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e1":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

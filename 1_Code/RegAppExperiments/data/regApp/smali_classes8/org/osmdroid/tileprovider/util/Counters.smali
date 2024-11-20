.class public Lorg/osmdroid/tileprovider/util/Counters;
.super Ljava/lang/Object;
.source "Counters.java"


# static fields
.field static final TAG:Ljava/lang/String; = "osmCounters"

.field public static countOOM:I

.field public static fileCacheHit:I

.field public static fileCacheMiss:I

.field public static fileCacheOOM:I

.field public static fileCacheSaveErrors:I

.field private static final sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static tileDownloadErrors:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    .line 20
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 22
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 24
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    .line 26
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    .line 27
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)I
    .locals 2
    .param p0, "pTag"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static increment(Ljava/lang/String;)V
    .locals 4
    .param p0, "pTag"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 64
    .local v1, "value":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    return-void
.end method

.method public static printToLogcat()V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countOOM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osmCounters"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tileDownloadErrors "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileCacheSaveErrors "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileCacheMiss "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileCacheOOM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileCacheHit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static reset()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    .line 45
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 46
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 47
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    .line 48
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    .line 49
    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    .line 50
    return-void
.end method

.method public static reset(Ljava/lang/String;)V
    .locals 1
    .param p0, "pTag"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

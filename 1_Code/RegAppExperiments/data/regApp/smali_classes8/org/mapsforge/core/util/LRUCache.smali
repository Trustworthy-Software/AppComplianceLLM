.class public Lorg/mapsforge/core/util/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:F = 0.6f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final capacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 45
    .local p0, "this":Lorg/mapsforge/core/util/LRUCache;, "Lorg/mapsforge/core/util/LRUCache<TK;TV;>;"
    invoke-static {p1}, Lorg/mapsforge/core/util/LRUCache;->calculateInitialCapacity(I)I

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 46
    iput p1, p0, Lorg/mapsforge/core/util/LRUCache;->capacity:I

    .line 47
    return-void
.end method

.method private static calculateInitialCapacity(I)I
    .locals 3
    .param p0, "capacity"    # I

    .line 32
    if-ltz p0, :cond_0

    .line 35
    int-to-float v0, p0

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/mapsforge/core/util/LRUCache;, "Lorg/mapsforge/core/util/LRUCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapsforge/core/util/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lorg/mapsforge/core/util/LRUCache;->capacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

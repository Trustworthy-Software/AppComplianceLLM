.class final Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;
.super Ljava/lang/Object;
.source "TextKey.java"


# static fields
.field private static final TEXT_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->TEXT_KEYS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->key:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static getInstance(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 28
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->TEXT_KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    .line 29
    .local v1, "textKey":Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;
    if-nez v1, :cond_0

    .line 30
    new-instance v2, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    invoke-direct {v2, p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 31
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v1
.end method


# virtual methods
.method getValue(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 43
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/core/model/Tag;

    iget-object v3, v3, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/model/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    return-object v2

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lorg/osmdroid/util/IterableWithSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/osmdroid/util/IterableWithSize<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 877
    .local p0, "this":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;, "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;->list:Ljava/util/List;

    .line 879
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;

    .line 874
    .local p0, "this":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;, "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper<TT;>;"
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 888
    .local p0, "this":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;, "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper<TT;>;"
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 883
    .local p0, "this":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;, "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper<TT;>;"
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

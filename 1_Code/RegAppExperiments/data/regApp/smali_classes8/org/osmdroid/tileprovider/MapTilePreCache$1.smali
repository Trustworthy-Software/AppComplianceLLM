.class Lorg/osmdroid/tileprovider/MapTilePreCache$1;
.super Ljava/lang/Object;
.source "MapTilePreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTilePreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/MapTilePreCache;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/MapTilePreCache;

    .line 37
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 41
    nop

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->access$000(Lorg/osmdroid/tileprovider/MapTilePreCache;)J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "next":J
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-static {v0, v2, v3}, Lorg/osmdroid/tileprovider/MapTilePreCache;->access$100(Lorg/osmdroid/tileprovider/MapTilePreCache;J)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.class public Lorg/osmdroid/views/drawing/MapSnapshotHandler;
.super Landroid/os/Handler;
.source "MapSnapshotHandler.java"


# instance fields
.field private mMapSnapshot:Lorg/osmdroid/views/drawing/MapSnapshot;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/drawing/MapSnapshot;)V
    .locals 0
    .param p1, "pMapSnapshot"    # Lorg/osmdroid/views/drawing/MapSnapshot;

    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshotHandler;->mMapSnapshot:Lorg/osmdroid/views/drawing/MapSnapshot;

    .line 21
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshotHandler;->mMapSnapshot:Lorg/osmdroid/views/drawing/MapSnapshot;

    .line 37
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshotHandler;->mMapSnapshot:Lorg/osmdroid/views/drawing/MapSnapshot;

    .line 28
    .local v0, "mapSnapshot":Lorg/osmdroid/views/drawing/MapSnapshot;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshASAP()V

    .line 33
    .end local v0    # "mapSnapshot":Lorg/osmdroid/views/drawing/MapSnapshot;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

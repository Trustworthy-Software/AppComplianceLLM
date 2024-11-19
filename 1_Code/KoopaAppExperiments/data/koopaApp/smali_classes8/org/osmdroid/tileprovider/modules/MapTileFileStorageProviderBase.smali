.class public abstract Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapTileFileStorageProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

.field private final mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V
    .locals 2
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pThreadPoolSize"    # I
    .param p3, "pPendingQueueSize"    # I

    .line 17
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    .line 19
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 20
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$1;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, "mediaFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    invoke-interface {p1, v1, v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    invoke-interface {v1, v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    .line 35
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    .line 36
    return-void
.end method

.method protected onMediaMounted()V
    .locals 0

    .line 40
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 0

    .line 44
    return-void
.end method

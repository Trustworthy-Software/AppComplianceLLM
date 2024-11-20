.class public Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 149
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method protected downloadTile(JILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "pMapTileIndex"    # J
    .param p3, "redirectCount"    # I
    .param p4, "targetUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 156
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    return-object v1

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 165
    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$200(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/TileDownloader;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v6

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JILjava/lang/String;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->release()V

    .line 165
    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->release()V

    .line 168
    throw v1

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/InterruptedException;
    return-object v1
.end method

.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pMapTileIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 175
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return-object v1

    .line 180
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 181
    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;->getNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to NetworkAvailabliltyCheck."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OsmDroid"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    return-object v1

    .line 188
    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(J)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "tileURLString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    return-object v1

    .line 194
    :cond_3
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/osmdroid/util/UrlBackoff;->shouldWait(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    return-object v1

    .line 197
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->downloadTile(JILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_5

    .line 199
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/osmdroid/util/UrlBackoff;->next(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_5
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/osmdroid/util/UrlBackoff;->remove(Ljava/lang/String;)Lorg/osmdroid/util/Delay;

    .line 203
    :goto_0
    return-object v1
.end method

.method protected tileLoaded(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->removeTileFromQueues(J)V

    .line 213
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 216
    return-void
.end method

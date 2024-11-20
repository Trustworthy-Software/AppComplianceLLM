.class public Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileAssetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
    .param p2, "pAssets"    # Landroid/content/res/AssetManager;

    .line 123
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    .line 124
    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    .line 125
    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pMapTileIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/CantContinueException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 130
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    return-object v1

    .line 135
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 136
    .local v2, "is":Ljava/io/InputStream;
    invoke-interface {v0, v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 141
    return-object v1

    .line 143
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    new-instance v2, Lorg/osmdroid/tileprovider/modules/CantContinueException;

    invoke-direct {v2, v1}, Lorg/osmdroid/tileprovider/modules/CantContinueException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 142
    .end local v1    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    :catch_1
    move-exception v2

    .line 145
    nop

    .line 148
    return-object v1
.end method

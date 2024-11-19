.class public Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileApproximater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileApproximater;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    .line 110
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pMapTileIndex"    # J

    .line 114
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x3

    invoke-static {v1, v2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 118
    return-object v1

    .line 120
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

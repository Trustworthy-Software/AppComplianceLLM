.class public Lorg/mapsforge/map/model/FixedTileSizeDisplayModel;
.super Lorg/mapsforge/map/model/DisplayModel;
.source "FixedTileSizeDisplayModel.java"


# instance fields
.field private final tileSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "tileSize"    # I

    .line 26
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;-><init>()V

    .line 27
    iput p1, p0, Lorg/mapsforge/map/model/FixedTileSizeDisplayModel;->tileSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public getTileSize()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/mapsforge/map/model/FixedTileSizeDisplayModel;->tileSize:I

    return v0
.end method

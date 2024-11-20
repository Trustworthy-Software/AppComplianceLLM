.class public Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/XYTileSource;
.source "FileBasedTileSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "aBaseUrl"    # [Ljava/lang/String;

    .line 14
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 21
    :cond_0
    new-instance v7, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/16 v4, 0x100

    const-string v5, ".png"

    const-string v0, "http://localhost"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-object v7
.end method

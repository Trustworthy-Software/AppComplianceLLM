.class synthetic Lorg/mapsforge/map/layer/hills/HgtCache$2;
.super Ljava/lang/Object;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 419
    invoke-static {}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->values()[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mapsforge/map/layer/hills/HgtCache$2;->$SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I

    :try_start_0
    sget-object v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {v1}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/mapsforge/map/layer/hills/HgtCache$2;->$SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I

    sget-object v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->SOUTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {v1}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/mapsforge/map/layer/hills/HgtCache$2;->$SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I

    sget-object v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->EAST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {v1}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/mapsforge/map/layer/hills/HgtCache$2;->$SwitchMap$org$mapsforge$core$graphics$HillshadingBitmap$Border:[I

    sget-object v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {v1}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method

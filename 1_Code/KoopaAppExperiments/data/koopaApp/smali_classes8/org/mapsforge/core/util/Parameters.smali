.class public final Lorg/mapsforge/core/util/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;
    }
.end annotation


# static fields
.field public static MAP_VIEW_POSITION2:Z

.field public static MAXIMUM_BUFFER_SIZE:I

.field public static NUMBER_OF_THREADS:I

.field public static PARENT_TILES_RENDERING:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

.field public static SQUARE_FRAME_BUFFER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mapsforge/core/util/Parameters;->MAP_VIEW_POSITION2:Z

    .line 29
    const v0, 0x7a1200

    sput v0, Lorg/mapsforge/core/util/Parameters;->MAXIMUM_BUFFER_SIZE:I

    .line 37
    const/4 v0, 0x1

    sput v0, Lorg/mapsforge/core/util/Parameters;->NUMBER_OF_THREADS:I

    .line 42
    sget-object v1, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->QUALITY:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    sput-object v1, Lorg/mapsforge/core/util/Parameters;->PARENT_TILES_RENDERING:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    .line 50
    sput-boolean v0, Lorg/mapsforge/core/util/Parameters;->SQUARE_FRAME_BUFFER:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

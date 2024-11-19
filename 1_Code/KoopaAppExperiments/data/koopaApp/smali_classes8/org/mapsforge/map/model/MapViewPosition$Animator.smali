.class Lorg/mapsforge/map/model/MapViewPosition$Animator;
.super Lorg/mapsforge/map/util/PausableThread;
.source "MapViewPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/model/MapViewPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animator"
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_MOVE_STEPS:I = 0x19

.field private static final FRAME_LENGTH_IN_MS:I = 0xf


# instance fields
.field private mapSize:J

.field private moveSteps:I

.field private scaleDifference:D

.field private startScaleFactor:D

.field private targetPixelX:D

.field private targetPixelY:D

.field final synthetic this$0:Lorg/mapsforge/map/model/MapViewPosition;

.field private timeEnd:J

.field private timeStart:J

.field private zoomAnimation:Z


# direct methods
.method private constructor <init>(Lorg/mapsforge/map/model/MapViewPosition;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-direct {p0}, Lorg/mapsforge/map/util/PausableThread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mapsforge/map/model/MapViewPosition;Lorg/mapsforge/map/model/MapViewPosition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mapsforge/map/model/MapViewPosition;
    .param p2, "x1"    # Lorg/mapsforge/map/model/MapViewPosition$1;

    .line 33
    invoke-direct {p0, p1}, Lorg/mapsforge/map/model/MapViewPosition$Animator;-><init>(Lorg/mapsforge/map/model/MapViewPosition;)V

    return-void
.end method

.method private calculateScaleFactor(F)D
    .locals 6
    .param p1, "percent"    # F

    .line 54
    iget-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->startScaleFactor:D

    iget-wide v2, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->scaleDifference:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private doWorkMove()V
    .locals 18

    .line 65
    move-object/from16 v0, p0

    iget v1, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    if-nez v1, :cond_0

    .line 66
    return-void

    .line 67
    :cond_0
    iget-object v1, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-static {v1}, Lorg/mapsforge/map/model/MapViewPosition;->access$000(Lorg/mapsforge/map/model/MapViewPosition;)D

    move-result-wide v1

    iget-wide v3, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->mapSize:J

    invoke-static {v1, v2, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v1

    .line 68
    .local v1, "currentPixelX":D
    iget-object v3, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-static {v3}, Lorg/mapsforge/map/model/MapViewPosition;->access$100(Lorg/mapsforge/map/model/MapViewPosition;)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->mapSize:J

    invoke-static {v3, v4, v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v3

    .line 69
    .local v3, "currentPixelY":D
    iget-wide v5, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelX:D

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget v7, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 70
    .local v5, "stepSizeX":D
    iget-wide v7, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelY:D

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget v9, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 71
    .local v7, "stepSizeY":D
    iget-wide v9, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelX:D

    sub-double v9, v1, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    move-result-wide v9

    .line 72
    .local v9, "signX":D
    iget-wide v11, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelY:D

    sub-double v11, v3, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->signum(D)D

    move-result-wide v11

    .line 73
    .local v11, "signY":D
    iget v13, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    .line 75
    iget-object v13, v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    mul-double v14, v5, v9

    move-wide/from16 v16, v1

    .end local v1    # "currentPixelX":D
    .local v16, "currentPixelX":D
    mul-double v0, v7, v11

    invoke-virtual {v13, v14, v15, v0, v1}, Lorg/mapsforge/map/model/MapViewPosition;->moveCenter(DD)V

    .line 76
    return-void
.end method

.method private doWorkZoom()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->zoomAnimation:Z

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->timeEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->zoomAnimation:Z

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->calculateScaleFactor(F)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/map/model/MapViewPosition;->setScaleFactor(D)V

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/model/MapViewPosition;->setPivot(Lorg/mapsforge/core/model/LatLong;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->timeStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437a0000    # 250.0f

    div-float/2addr v0, v1

    .line 87
    .local v0, "timeElapsedRatio":F
    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-direct {p0, v0}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->calculateScaleFactor(F)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/mapsforge/map/model/MapViewPosition;->setScaleFactor(D)V

    .line 89
    .end local v0    # "timeElapsedRatio":F
    :goto_0
    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->doWorkMove()V

    .line 60
    invoke-direct {p0}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->doWorkZoom()V

    .line 61
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->sleep(J)V

    .line 62
    return-void
.end method

.method protected getThreadPriority()Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    .locals 1

    .line 93
    sget-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->ABOVE_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-object v0
.end method

.method protected hasWork()Z
    .locals 1

    .line 98
    iget v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->zoomAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method startAnimationMove(Lorg/mapsforge/core/model/LatLong;)V
    .locals 4
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 103
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-static {v0}, Lorg/mapsforge/map/model/MapViewPosition;->access$200(Lorg/mapsforge/map/model/MapViewPosition;)B

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->this$0:Lorg/mapsforge/map/model/MapViewPosition;

    invoke-static {v1}, Lorg/mapsforge/map/model/MapViewPosition;->access$300(Lorg/mapsforge/map/model/MapViewPosition;)Lorg/mapsforge/map/model/DisplayModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->mapSize:J

    .line 104
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v2, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->mapSize:J

    invoke-static {v0, v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelX:D

    .line 105
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->mapSize:J

    invoke-static {v0, v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->targetPixelY:D

    .line 106
    const/16 v0, 0x19

    iput v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->moveSteps:I

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startAnimationZoom(DD)V
    .locals 4
    .param p1, "startScaleFactor"    # D
    .param p3, "targetScaleFactor"    # D

    .line 114
    iput-wide p1, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->startScaleFactor:D

    .line 115
    sub-double v0, p3, p1

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->scaleDifference:D

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->zoomAnimation:Z

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->timeStart:J

    .line 118
    const-wide/16 v2, 0xfa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition$Animator;->timeEnd:J

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

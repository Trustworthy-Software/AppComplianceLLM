.class Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController$ReplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplayClass"
.end annotation


# instance fields
.field private final mClockwise:Ljava/lang/Boolean;

.field private mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

.field private final mOrientation:Ljava/lang/Float;

.field private mPoint:Landroid/graphics/Point;

.field private mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

.field private final mSpeed:Ljava/lang/Long;

.field private final mZoom:Ljava/lang/Double;

.field final synthetic this$1:Lorg/osmdroid/views/MapController$ReplayController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 9
    .param p2, "mReplayType"    # Lorg/osmdroid/views/MapController$ReplayType;
    .param p3, "mPoint"    # Landroid/graphics/Point;
    .param p4, "mGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .line 631
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 632
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "pReplayType"    # Lorg/osmdroid/views/MapController$ReplayType;
    .param p3, "pPoint"    # Landroid/graphics/Point;
    .param p4, "pGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p5, "pZoom"    # Ljava/lang/Double;
    .param p6, "pSpeed"    # Ljava/lang/Long;
    .param p7, "pOrientation"    # Ljava/lang/Float;
    .param p8, "pClockwise"    # Ljava/lang/Boolean;

    .line 638
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->this$1:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p2, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

    .line 640
    iput-object p3, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mPoint:Landroid/graphics/Point;

    .line 641
    iput-object p4, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    .line 642
    iput-object p6, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mSpeed:Ljava/lang/Long;

    .line 643
    iput-object p5, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mZoom:Ljava/lang/Double;

    .line 644
    iput-object p7, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mOrientation:Ljava/lang/Float;

    .line 645
    iput-object p8, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mClockwise:Ljava/lang/Boolean;

    .line 646
    return-void
.end method

.method static synthetic access$100(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/views/MapController$ReplayType;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mReplayType:Lorg/osmdroid/views/MapController$ReplayType;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mGeoPoint:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mZoom:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$400(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mSpeed:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mOrientation:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mClockwise:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 621
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

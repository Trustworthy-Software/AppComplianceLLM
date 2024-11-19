.class public Lorg/osmdroid/views/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getNextSquareNumberAbove(F)I
    .locals 1
    .param p0, "factor"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/osmdroid/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v0

    return v0
.end method

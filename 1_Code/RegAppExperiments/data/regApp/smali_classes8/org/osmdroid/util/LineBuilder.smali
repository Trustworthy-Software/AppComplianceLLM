.class public abstract Lorg/osmdroid/util/LineBuilder;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mIndex:I

.field private final mLines:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "pMaxSize"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    .line 16
    return-void
.end method

.method private innerFlush()V
    .locals 1

    .line 46
    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/osmdroid/util/LineBuilder;->flush()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    .line 50
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 4
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 25
    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    iget v1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    long-to-float v3, p1

    aput v3, v0, v1

    .line 26
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    long-to-float v3, p3

    aput v3, v0, v2

    .line 27
    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 28
    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    .line 30
    :cond_0
    return-void
.end method

.method public end()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    .line 35
    return-void
.end method

.method public abstract flush()V
.end method

.method public getLines()[F
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return v0
.end method

.method public init()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    .line 21
    return-void
.end method

.class public Lorg/osmdroid/util/IntegerAccepter;
.super Ljava/lang/Object;
.source "IntegerAccepter.java"


# instance fields
.field private mIndex:I

.field private final mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "pSize"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    .line 16
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "pInteger"    # I

    .line 23
    iget-object v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    iget v1, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    aput p1, v0, v1

    .line 24
    return-void
.end method

.method public end()V
    .locals 0

    .line 31
    return-void
.end method

.method public flush()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    .line 35
    return-void
.end method

.method public getValue(I)I
    .locals 1
    .param p1, "pIndex"    # I

    .line 27
    iget-object v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public init()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    .line 20
    return-void
.end method

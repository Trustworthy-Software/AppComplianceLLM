.class final Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;
.super Ljava/lang/Object;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$Direction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectionVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction$DirectionVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "number"    # I

    .line 135
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredQuery$Direction;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

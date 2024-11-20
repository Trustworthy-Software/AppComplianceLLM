.class final Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;
.super Ljava/lang/Object;
.source "BundledQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundledQuery$LimitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;-><init>()V

    sput-object v0, Lcom/google/firestore/bundle/BundledQuery$LimitType$LimitTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "number"    # I

    .line 102
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->forNumber(I)Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

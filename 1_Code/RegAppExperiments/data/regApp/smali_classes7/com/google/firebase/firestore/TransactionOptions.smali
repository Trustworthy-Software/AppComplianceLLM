.class public final Lcom/google/firebase/firestore/TransactionOptions;
.super Ljava/lang/Object;
.source "TransactionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/TransactionOptions$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT:Lcom/google/firebase/firestore/TransactionOptions;

.field static final DEFAULT_MAX_ATTEMPTS_COUNT:I = 0x5


# instance fields
.field private final maxAttempts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/firebase/firestore/TransactionOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/TransactionOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/TransactionOptions$Builder;->build()Lcom/google/firebase/firestore/TransactionOptions;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/TransactionOptions;->DEFAULT:Lcom/google/firebase/firestore/TransactionOptions;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "maxAttempts"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/firebase/firestore/TransactionOptions$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/firebase/firestore/TransactionOptions$1;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/TransactionOptions;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/TransactionOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/TransactionOptions;

    .line 23
    iget v0, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/TransactionOptions;

    .line 91
    .local v2, "that":Lcom/google/firebase/firestore/TransactionOptions;
    iget v3, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    iget v4, v2, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 87
    .end local v2    # "that":Lcom/google/firebase/firestore/TransactionOptions;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMaxAttempts()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionOptions{maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/TransactionOptions;->maxAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

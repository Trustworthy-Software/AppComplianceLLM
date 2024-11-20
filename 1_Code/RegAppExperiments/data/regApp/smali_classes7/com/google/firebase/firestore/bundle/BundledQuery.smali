.class public Lcom/google/firebase/firestore/bundle/BundledQuery;
.super Ljava/lang/Object;
.source "BundledQuery.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleElement;


# instance fields
.field private final limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

.field private final target:Lcom/google/firebase/firestore/core/Target;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Query$LimitType;)V
    .locals 0
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .param p2, "limitType"    # Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->target:Lcom/google/firebase/firestore/core/Target;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/bundle/BundledQuery;

    .line 50
    .local v2, "that":Lcom/google/firebase/firestore/bundle/BundledQuery;
    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->target:Lcom/google/firebase/firestore/core/Target;

    iget-object v4, v2, Lcom/google/firebase/firestore/bundle/BundledQuery;->target:Lcom/google/firebase/firestore/core/Target;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/core/Target;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v4, v2, Lcom/google/firebase/firestore/bundle/BundledQuery;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 46
    .end local v2    # "that":Lcom/google/firebase/firestore/bundle/BundledQuery;
    :cond_4
    :goto_1
    return v1
.end method

.method public getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v0
.end method

.method public getTarget()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->target:Lcom/google/firebase/firestore/core/Target;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->target:Lcom/google/firebase/firestore/core/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundledQuery;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query$LimitType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

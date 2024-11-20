.class public Lcom/google/firebase/firestore/FirebaseFirestoreException;
.super Lcom/google/firebase/FirebaseException;
.source "FirebaseFirestoreException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;
    }
.end annotation


# instance fields
.field private final code:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V
    .locals 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    .line 145
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v0, "Provided message must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "A FirebaseFirestoreException should never be thrown for OK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const-string v0, "Provided code must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 154
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const-string v0, "Provided message must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "A FirebaseFirestoreException should never be thrown for OK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v0, "Provided code must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    .line 159
    return-void
.end method


# virtual methods
.method public getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;->code:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    return-object v0
.end method

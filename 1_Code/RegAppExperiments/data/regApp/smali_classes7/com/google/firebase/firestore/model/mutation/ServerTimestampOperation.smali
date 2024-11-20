.class public Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
.super Ljava/lang/Object;
.source "ServerTimestampOperation.java"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# static fields
.field private static final SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-object v0
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 34
    invoke-static {p2, p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->valueOf(Lcom/google/firebase/Timestamp;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public applyToRemoteDocument(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 0
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "transformResult"    # Lcom/google/firestore/v1/Value;

    .line 39
    return-object p2
.end method

.method public computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "currentValue"    # Lcom/google/firestore/v1/Value;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

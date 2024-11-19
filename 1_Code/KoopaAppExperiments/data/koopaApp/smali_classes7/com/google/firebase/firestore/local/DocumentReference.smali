.class Lcom/google/firebase/firestore/local/DocumentReference;
.super Ljava/lang/Object;
.source "DocumentReference.java"


# static fields
.field static final BY_KEY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field

.field static final BY_TARGET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final targetOrBatchId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/DocumentReference;->BY_KEY:Ljava/util/Comparator;

    .line 66
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/DocumentReference;->BY_TARGET:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "targetOrBatchId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 39
    iput p2, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    .line 40
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/firestore/local/DocumentReference;Lcom/google/firebase/firestore/local/DocumentReference;)I
    .locals 3
    .param p0, "o1"    # Lcom/google/firebase/firestore/local/DocumentReference;
    .param p1, "o2"    # Lcom/google/firebase/firestore/local/DocumentReference;

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    .line 59
    .local v0, "keyComp":I
    if-eqz v0, :cond_0

    .line 60
    return v0

    .line 63
    :cond_0
    iget v1, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    iget v2, p1, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$static$1(Lcom/google/firebase/firestore/local/DocumentReference;Lcom/google/firebase/firestore/local/DocumentReference;)I
    .locals 3
    .param p0, "o1"    # Lcom/google/firebase/firestore/local/DocumentReference;
    .param p1, "o2"    # Lcom/google/firebase/firestore/local/DocumentReference;

    .line 68
    iget v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    iget v1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v0

    .line 70
    .local v0, "targetComp":I
    if-eqz v0, :cond_0

    .line 71
    return v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v2, p1, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v1

    return v1
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    return v0
.end method

.method getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

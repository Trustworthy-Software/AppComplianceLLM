.class public Lcom/google/firebase/firestore/index/IndexByteEncoder;
.super Ljava/lang/Object;
.source "IndexByteEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;,
        Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;
    }
.end annotation


# instance fields
.field private final ascending:Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;

.field private final descending:Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;

.field private final orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    invoke-direct {v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    .line 88
    new-instance v0, Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;-><init>(Lcom/google/firebase/firestore/index/IndexByteEncoder;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->ascending:Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;

    .line 89
    new-instance v0, Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;-><init>(Lcom/google/firebase/firestore/index/IndexByteEncoder;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->descending:Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/index/IndexByteEncoder;)Lcom/google/firebase/firestore/index/OrderedCodeWriter;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/index/IndexByteEncoder;

    .line 24
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    return-object v0
.end method


# virtual methods
.method public forKind(Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    .locals 1
    .param p1, "kind"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 97
    sget-object v0, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->descending:Lcom/google/firebase/firestore/index/IndexByteEncoder$DescendingIndexByteEncoder;

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->ascending:Lcom/google/firebase/firestore/index/IndexByteEncoder$AscendingIndexByteEncoder;

    return-object v0
.end method

.method public getEncodedBytes()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->encodedBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->reset()V

    .line 110
    return-void
.end method

.method public seed([B)V
    .locals 1
    .param p1, "encodedBytes"    # [B

    .line 93
    iget-object v0, p0, Lcom/google/firebase/firestore/index/IndexByteEncoder;->orderedCode:Lcom/google/firebase/firestore/index/OrderedCodeWriter;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->seed([B)V

    .line 94
    return-void
.end method

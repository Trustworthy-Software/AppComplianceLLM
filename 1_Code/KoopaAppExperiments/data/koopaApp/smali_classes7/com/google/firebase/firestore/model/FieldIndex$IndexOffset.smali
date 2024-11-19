.class public abstract Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
.super Ljava/lang/Object;
.source "FieldIndex.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/FieldIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndexOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOCUMENT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 126
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 128
    new-instance v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->DOCUMENT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 1
    .param p0, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "largestBatchId"    # I

    .line 138
    new-instance v0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)V

    return-object v0
.end method

.method public static createSuccessor(Lcom/google/firebase/firestore/model/SnapshotVersion;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 8
    .param p0, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p1, "largestBatchId"    # I

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v0

    .line 151
    .local v0, "successorSeconds":J
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 152
    .local v2, "successorNanos":I
    new-instance v3, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 154
    int-to-double v4, v2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 155
    new-instance v4, Lcom/google/firebase/Timestamp;

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    goto :goto_0

    .line 156
    :cond_0
    new-instance v4, Lcom/google/firebase/Timestamp;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 157
    .local v3, "successor":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v4

    return-object v4
.end method

.method public static fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 3
    .param p0, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 162
    invoke-interface {p0}, Lcom/google/firebase/firestore/model/Document;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/MutableDocument;)I
    .locals 2
    .param p0, "l"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p1, "r"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 129
    invoke-static {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I
    .locals 3
    .param p1, "other"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 182
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v0

    .line 183
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    return v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    .line 185
    if-eqz v0, :cond_1

    return v0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 123
    check-cast p1, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result p1

    return p1
.end method

.method public abstract getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;
.end method

.method public abstract getLargestBatchId()I
.end method

.method public abstract getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
.end method

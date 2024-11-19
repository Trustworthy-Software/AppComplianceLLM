.class public abstract Lcom/google/firebase/firestore/model/FieldIndex;
.super Ljava/lang/Object;
.source "FieldIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;,
        Lcom/google/firebase/firestore/model/FieldIndex$IndexState;,
        Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    }
.end annotation


# static fields
.field public static final INITIAL_LARGEST_BATCH_ID:I = -0x1

.field public static final INITIAL_SEQUENCE_NUMBER:I = 0x0

.field public static INITIAL_STATE:Lcom/google/firebase/firestore/model/FieldIndex$IndexState; = null

.field public static final SEMANTIC_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 50
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->create(JLcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/FieldIndex;->INITIAL_STATE:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    .line 53
    new-instance v0, Lcom/google/firebase/firestore/model/FieldIndex$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/FieldIndex$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/FieldIndex;->SEMANTIC_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;
    .locals 1
    .param p0, "indexId"    # I
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p3, "indexState"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexState;",
            ")",
            "Lcom/google/firebase/firestore/model/FieldIndex;"
        }
    .end annotation

    .line 192
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    new-instance v0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/FieldIndex;)I
    .locals 5
    .param p0, "left"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p1, "right"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 55
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "leftIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, "rightIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)I

    move-result v0

    .line 62
    if-eqz v0, :cond_1

    return v0

    .line 64
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v3

    return v3
.end method


# virtual methods
.method public getArraySegment()Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 224
    .local v1, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    return-object v1

    .line 228
    .end local v1    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCollectionGroup()Ljava/lang/String;
.end method

.method public getDirectionalSegments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "filteredSegments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 214
    .local v2, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v2    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    return-object v0
.end method

.method public abstract getIndexId()I
.end method

.method public abstract getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
.end method

.method public abstract getSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;"
        }
    .end annotation
.end method

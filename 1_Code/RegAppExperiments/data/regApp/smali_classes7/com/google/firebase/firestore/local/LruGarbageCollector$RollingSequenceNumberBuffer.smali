.class Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LruGarbageCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RollingSequenceNumberBuffer"
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final maxElements:I

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->maxElements:I

    .line 193
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    .line 194
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Long;
    .param p1, "b"    # Ljava/lang/Long;

    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method


# virtual methods
.method addElement(Ljava/lang/Long;)V
    .locals 5
    .param p1, "sequenceNumber"    # Ljava/lang/Long;

    .line 197
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->maxElements:I

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    .local v0, "highestValue":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "highestValue":Ljava/lang/Long;
    :cond_1
    :goto_0
    return-void
.end method

.method getMaxValue()J
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

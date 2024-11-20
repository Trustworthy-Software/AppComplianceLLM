.class public final synthetic Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;

    check-cast p1, Lcom/google/firebase/firestore/local/TargetData;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->lambda$getNthSequenceNumber$0(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;Lcom/google/firebase/firestore/local/TargetData;)V

    return-void
.end method

.class public final synthetic Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate$$ExternalSyntheticLambda0;->f$0:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate$$ExternalSyntheticLambda0;->f$0:[J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->lambda$getSequenceNumberCount$0([JLjava/lang/Long;)V

    return-void
.end method

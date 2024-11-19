.class public final synthetic Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:[Ljava/lang/Throwable;

.field public final synthetic f$2:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->lambda$runSync$4(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

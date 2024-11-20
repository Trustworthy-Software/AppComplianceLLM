.class public final synthetic Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->lambda$new$0$com-google-firebase-firestore-util-AsyncQueue$SynchronizedShutdownAwareExecutor(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

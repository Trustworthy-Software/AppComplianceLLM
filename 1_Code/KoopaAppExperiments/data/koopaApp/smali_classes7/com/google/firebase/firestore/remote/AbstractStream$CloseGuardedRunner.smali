.class Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;
.super Ljava/lang/Object;
.source "AbstractStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseGuardedRunner"
.end annotation


# instance fields
.field private final initialCloseCount:J

.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AbstractStream;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/AbstractStream;
    .param p2, "initialCloseCount"    # J

    .line 60
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->initialCloseCount:J

    .line 62
    return-void
.end method


# virtual methods
.method run(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 65
    .local p0, "this":Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;, "Lcom/google/firebase/firestore/remote/AbstractStream<TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->access$000(Lcom/google/firebase/firestore/remote/AbstractStream;)Lcom/google/firebase/firestore/util/AsyncQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->verifyIsCurrentThread()V

    .line 66
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->access$100(Lcom/google/firebase/firestore/remote/AbstractStream;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->initialCloseCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    const-string v2, "stream callback skipped by CloseGuardedRunner."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void
.end method

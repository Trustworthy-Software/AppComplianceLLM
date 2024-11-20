.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientStreamListenerImpl"
.end annotation


# instance fields
.field private exceptionStatus:Lio/grpc/Status;

.field private final observer:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 588
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    .local p2, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    const-string p1, "observer"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ClientCall$Listener;

    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    .line 590
    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    .line 584
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionStatus:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    .line 584
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 584
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionThrown(Lio/grpc/Status;)V

    return-void
.end method

.method private closedInternal(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 709
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$1000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;

    move-result-object v0

    .line 710
    .local v0, "deadline":Lio/grpc/Deadline;
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Lio/grpc/Deadline;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    new-instance v1, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v1}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 716
    .local v1, "insight":Lio/grpc/internal/InsightBuilder;
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 717
    sget-object v2, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 720
    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    move-object p3, v2

    .line 723
    .end local v1    # "insight":Lio/grpc/internal/InsightBuilder;
    :cond_0
    move-object v1, p1

    .line 724
    .local v1, "savedStatus":Lio/grpc/Status;
    move-object v2, p3

    .line 725
    .local v2, "savedTrailers":Lio/grpc/Metadata;
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v3

    .line 765
    .local v3, "link":Lio/perfmark/Link;
    iget-object v4, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v4}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;

    invoke-direct {v5, p0, v3, v1, v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method private exceptionThrown(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 600
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionStatus:Lio/grpc/Status;

    .line 601
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 602
    return-void
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 699
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.closed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 701
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closedInternal(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 704
    nop

    .line 705
    return-void

    .line 703
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 4
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 606
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.headersRead"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 607
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 639
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/Metadata;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 642
    nop

    .line 643
    return-void

    .line 641
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v3

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 4
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 647
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 648
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 691
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessagesAvailable;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessagesAvailable;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v3

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

.method public onReady()V
    .locals 4

    .line 770
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ClientStreamListenerImpl;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$900(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.onReady"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 775
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 807
    .local v0, "link":Lio/perfmark/Link;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 810
    nop

    .line 811
    return-void

    .line 809
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v3

    invoke-static {v1, v3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v2
.end method

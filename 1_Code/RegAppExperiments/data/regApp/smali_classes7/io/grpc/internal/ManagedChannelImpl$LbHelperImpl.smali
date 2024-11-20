.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
.super Lio/grpc/LoadBalancer$Helper;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LbHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;
    }
.end annotation


# instance fields
.field lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$Helper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 1455
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method public createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p1, "addressGroup"    # Lio/grpc/EquivalentAddressGroup;
    .param p2, "authority"    # Ljava/lang/String;

    .line 1507
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createOobChannel(Ljava/util/List;Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createOobChannel(Ljava/util/List;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 27
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannel;"
        }
    .end annotation

    .line 1514
    .local p1, "addressGroup":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4000(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Channel is terminated"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1515
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v12

    .line 1516
    .local v12, "oobChannelCreationTime":J
    const-string v1, "OobChannel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v16

    .line 1517
    .local v16, "oobLogId":Lio/grpc/InternalLogId;
    nop

    .line 1518
    const-string v1, "Subchannel-OOB"

    move-object/from16 v11, p2

    invoke-static {v1, v11}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v17

    .line 1519
    .local v17, "subchannelLogId":Lio/grpc/InternalLogId;
    new-instance v1, Lio/grpc/internal/ChannelTracer;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1521
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5400(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OobChannel for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object/from16 v3, v16

    move-wide v5, v12

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    .line 1523
    .local v1, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    new-instance v15, Lio/grpc/internal/OobChannel;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1524
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ObjectPool;

    move-result-object v4

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v6, v2, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1525
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v7

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v9

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v10

    move-object v2, v15

    move-object/from16 v3, p2

    move-object v8, v1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/OobChannel;-><init>(Ljava/lang/String;Lio/grpc/internal/ObjectPool;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/SynchronizationContext;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalChannelz;Lio/grpc/internal/TimeProvider;)V

    move-object v10, v15

    .line 1526
    .local v10, "oobChannel":Lio/grpc/internal/OobChannel;
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ChannelTracer;

    move-result-object v2

    new-instance v3, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 1527
    const-string v4, "Child OobChannel created"

    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 1528
    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    .line 1529
    invoke-virtual {v3, v12, v13}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    .line 1530
    invoke-virtual {v3, v10}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setChannelRef(Lio/grpc/InternalWithLogId;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    .line 1531
    invoke-virtual {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v3

    .line 1526
    invoke-virtual {v2, v3}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 1532
    new-instance v8, Lio/grpc/internal/ChannelTracer;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1533
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5400(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subchannel for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object/from16 v3, v17

    move-wide v5, v12

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    move-object v9, v8

    .line 1535
    .local v9, "subchannelTracer":Lio/grpc/internal/ChannelTracer;
    new-instance v15, Lio/grpc/internal/ChannelLoggerImpl;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v2

    invoke-direct {v15, v9, v2}, Lio/grpc/internal/ChannelLoggerImpl;-><init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V

    .line 1554
    .local v15, "subchannelLogger":Lio/grpc/ChannelLogger;
    new-instance v18, Lio/grpc/internal/InternalSubchannel;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1556
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6100(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;

    move-result-object v5

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v6

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1557
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lcom/google/common/base/Supplier;

    move-result-object v8

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v3, v2, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;

    invoke-direct {v2, v0, v10}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/OobChannel;)V

    move-object/from16 v19, v1

    .end local v1    # "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v19, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1560
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v20

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1561
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v21

    move-object/from16 v0, v19

    .end local v19    # "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v0, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    move-object/from16 v1, v18

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v9

    .end local v9    # "subchannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v23, "subchannelTracer":Lio/grpc/internal/ChannelTracer;
    move-object/from16 v9, v22

    move-object/from16 v24, v10

    .end local v10    # "oobChannel":Lio/grpc/internal/OobChannel;
    .local v24, "oobChannel":Lio/grpc/internal/OobChannel;
    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-wide/from16 v25, v12

    .end local v12    # "oobChannelCreationTime":J
    .local v25, "oobChannelCreationTime":J
    move-object/from16 v12, v21

    move-object/from16 v13, v23

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v15}, Lio/grpc/internal/InternalSubchannel;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lio/grpc/SynchronizationContext;Lio/grpc/internal/InternalSubchannel$Callback;Lio/grpc/InternalChannelz;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger;)V

    .line 1565
    .local v1, "internalSubchannel":Lio/grpc/internal/InternalSubchannel;
    new-instance v2, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 1566
    const-string v3, "Child Subchannel created"

    invoke-virtual {v2, v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 1567
    invoke-virtual {v2, v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v2

    .line 1568
    move-wide/from16 v3, v25

    .end local v25    # "oobChannelCreationTime":J
    .local v3, "oobChannelCreationTime":J
    invoke-virtual {v2, v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v2

    .line 1569
    invoke-virtual {v2, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSubchannelRef(Lio/grpc/InternalWithLogId;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v2

    .line 1570
    invoke-virtual {v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v2

    .line 1565
    invoke-virtual {v0, v2}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 1571
    move-object v2, v0

    move-object/from16 v0, p0

    .end local v0    # "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    .local v2, "oobChannelTracer":Lio/grpc/internal/ChannelTracer;
    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v5

    move-object/from16 v6, v24

    .end local v24    # "oobChannel":Lio/grpc/internal/OobChannel;
    .local v6, "oobChannel":Lio/grpc/internal/OobChannel;
    invoke-virtual {v5, v6}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1572
    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v5

    invoke-virtual {v5, v1}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1573
    invoke-virtual {v6, v1}, Lio/grpc/internal/OobChannel;->setSubchannel(Lio/grpc/internal/InternalSubchannel;)V

    .line 1588
    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v5, v5, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v7, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1AddOobChannel;

    invoke-direct {v7, v0, v6}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1AddOobChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/OobChannel;)V

    invoke-virtual {v5, v7}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1589
    return-object v6
.end method

.method public createResolvingOobChannelBuilder(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1595
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;

    invoke-direct {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    invoke-virtual {p0, p1, v0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createResolvingOobChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    .line 1598
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/ManagedChannelBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    .line 1595
    return-object v0
.end method

.method public createResolvingOobChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "channelCreds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 1606
    const-string v0, "channelCreds"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4000(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1653
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/ChannelCredentials;Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1654
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$6600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    .line 1656
    .local v0, "builder":Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1658
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1659
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1660
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5400(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->maxTraceEvents(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1661
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/NameResolver$Args;->getProxyDetector()Lio/grpc/ProxyDetector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1662
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6100(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object v1

    .line 1656
    return-object v1
.end method

.method public bridge synthetic createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 0

    .line 1455
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/AbstractSubchannel;

    move-result-object p1

    return-object p1
.end method

.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/internal/AbstractSubchannel;
    .locals 2
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 1460
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 1462
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1463
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {v0, v1, p1, p0}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1688
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 1703
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverArgs()Lio/grpc/NameResolver$Args;
    .locals 1

    .line 1708
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverRegistry()Lio/grpc/NameResolverRegistry;
    .locals 1

    .line 1713
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolverRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1698
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronizationContext()Lio/grpc/SynchronizationContext;
    .locals 1

    .line 1693
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method public getUnsafeChannelCredentials()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 1667
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelCredentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1668
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;

    invoke-direct {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    return-object v0

    .line 1670
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public refreshNameResolution()V
    .locals 2

    .line 1494
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 1502
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1LoadBalancerRefreshNameResolution;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1503
    return-void
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 2
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
    .param p2, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 1469
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 1470
    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    const-string v0, "newPicker"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/ConnectivityState;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1490
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .param p2, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 1675
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->updateOobChannelAddresses(Lio/grpc/ManagedChannel;Ljava/util/List;)V

    .line 1676
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Ljava/util/List;)V
    .locals 2
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannel;",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 1681
    .local p2, "eag":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    instance-of v0, p1, Lio/grpc/internal/OobChannel;

    const-string v1, "channel must have been returned from createOobChannel"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1683
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/OobChannel;

    invoke-virtual {v0, p2}, Lio/grpc/internal/OobChannel;->updateAddresses(Ljava/util/List;)V

    .line 1684
    return-void
.end method

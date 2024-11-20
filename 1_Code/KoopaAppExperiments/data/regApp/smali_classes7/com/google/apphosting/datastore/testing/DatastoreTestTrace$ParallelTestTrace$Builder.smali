.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10851
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->access$21100()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10852
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 10844
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1

    .line 10897
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->copyOnWrite()V

    .line 10898
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->access$21400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;)V

    .line 10899
    return-object p0
.end method

.method public getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;
    .locals 1

    .line 10867
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    return-object v0
.end method

.method public hasTestTrace()Z
    .locals 1

    .line 10860
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->hasTestTrace()Z

    move-result v0

    return v0
.end method

.method public mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10890
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->copyOnWrite()V

    .line 10891
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->access$21300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10892
    return-object p0
.end method

.method public setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    .line 10882
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->copyOnWrite()V

    .line 10883
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->access$21200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10884
    return-object p0
.end method

.method public setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10873
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->copyOnWrite()V

    .line 10874
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->access$21200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 10875
    return-object p0
.end method

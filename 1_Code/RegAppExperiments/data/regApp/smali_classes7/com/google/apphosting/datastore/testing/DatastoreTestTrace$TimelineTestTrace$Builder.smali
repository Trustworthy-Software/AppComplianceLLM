.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTraceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11148
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->access$21600()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11149
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 11141
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 1

    .line 11194
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->copyOnWrite()V

    .line 11195
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->access$21900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;)V

    .line 11196
    return-object p0
.end method

.method public getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;
    .locals 1

    .line 11164
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    return-object v0
.end method

.method public hasTestTrace()Z
    .locals 1

    .line 11157
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->hasTestTrace()Z

    move-result v0

    return v0
.end method

.method public mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11187
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->copyOnWrite()V

    .line 11188
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->access$21800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 11189
    return-object p0
.end method

.method public setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    .line 11179
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->copyOnWrite()V

    .line 11180
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->access$21700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 11181
    return-object p0
.end method

.method public setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11170
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->copyOnWrite()V

    .line 11171
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->access$21700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    .line 11172
    return-object p0
.end method

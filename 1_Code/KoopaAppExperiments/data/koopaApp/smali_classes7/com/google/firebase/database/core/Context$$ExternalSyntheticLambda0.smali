.class public final synthetic Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionTokenProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/TokenProvider;

    iput-object p2, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final getToken(ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/TokenProvider;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/database/core/Context;->lambda$wrapTokenProvider$0(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    return-void
.end method

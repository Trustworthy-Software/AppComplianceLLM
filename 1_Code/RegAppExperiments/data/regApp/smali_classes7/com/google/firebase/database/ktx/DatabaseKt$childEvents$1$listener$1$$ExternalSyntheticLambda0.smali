.class public final synthetic Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lcom/google/firebase/database/DataSnapshot;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/DataSnapshot;

    iput-object p3, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/DataSnapshot;

    iget-object v2, p0, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/database/ktx/DatabaseKt$childEvents$1$listener$1;->$r8$lambda$CDae-8EO5vK2HuNJ2LDl88Bwov4(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

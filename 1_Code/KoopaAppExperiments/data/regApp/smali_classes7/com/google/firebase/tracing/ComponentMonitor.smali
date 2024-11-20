.class public Lcom/google/firebase/tracing/ComponentMonitor;
.super Ljava/lang/Object;
.source "ComponentMonitor.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrarProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$processRegistrar$0(Ljava/lang/String;Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "old"    # Lcom/google/firebase/components/Component;
    .param p2, "c"    # Lcom/google/firebase/components/ComponentContainer;

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/tracing/FirebaseTrace;->pushTrace(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getFactory()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/firebase/components/ComponentFactory;->create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/google/firebase/tracing/FirebaseTrace;->popTrace()V

    .line 38
    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/firebase/tracing/FirebaseTrace;->popTrace()V

    .line 41
    throw v0
.end method


# virtual methods
.method public processRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 6
    .param p1, "registrar"    # Lcom/google/firebase/components/ComponentRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 29
    .local v2, "comp":Lcom/google/firebase/components/Component;
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getName()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 32
    move-object v4, v2

    .line 33
    .local v4, "old":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<Ljava/lang/Object;>;"
    new-instance v5, Lcom/google/firebase/tracing/ComponentMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/google/firebase/tracing/ComponentMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/google/firebase/components/Component;)V

    .line 34
    invoke-virtual {v4, v5}, Lcom/google/firebase/components/Component;->withFactory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component;

    move-result-object v2

    .line 44
    .end local v4    # "old":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "comp":Lcom/google/firebase/components/Component;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.class public Lcom/google/firebase/components/ComponentRuntime;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentContainer;
.implements Lcom/google/firebase/dynamicloading/ComponentLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentRuntime$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

.field private final components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lcom/google/firebase/components/EventBus;

.field private final lazyInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Qualified<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lazySetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Qualified<",
            "*>;",
            "Lcom/google/firebase/components/LazySet<",
            "*>;>;"
        }
    .end annotation
.end field

.field private processedCoroutineDispatcherInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unprocessedRegistrarProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JenbCIFSyDrsXj6dZkV_P-yGdZs()Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V
    .locals 7
    .param p1, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "componentRegistrarProcessor"    # Lcom/google/firebase/components/ComponentRegistrarProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;",
            "Lcom/google/firebase/components/ComponentRegistrarProcessor;",
            ")V"
        }
    .end annotation

    .line 84
    .local p2, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    .local p3, "additionalComponents":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/components/Component<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->processedCoroutineDispatcherInterfaces:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Lcom/google/firebase/components/EventBus;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/EventBus;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    .line 86
    iput-object p4, p0, Lcom/google/firebase/components/ComponentRuntime;->componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "componentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    const-class v2, Lcom/google/firebase/components/EventBus;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/google/firebase/events/Subscriber;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v6, Lcom/google/firebase/events/Publisher;

    aput-object v6, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-class v0, Lcom/google/firebase/dynamicloading/ComponentLoader;

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 93
    .local v2, "additionalComponent":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "additionalComponent":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p2}, Lcom/google/firebase/components/ComponentRuntime;->iterableToList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    .line 100
    invoke-direct {p0, v1}, Lcom/google/firebase/components/ComponentRuntime;->discoverComponents(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;Lcom/google/firebase/components/ComponentRuntime$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/Executor;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lcom/google/firebase/components/ComponentRegistrarProcessor;
    .param p5, "x4"    # Lcom/google/firebase/components/ComponentRuntime$1;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V
    .locals 3
    .param p1, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;[",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    .local p2, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/components/ComponentRegistrar;>;"
    .local p3, "additionalComponents":[Lcom/google/firebase/components/Component;, "[Lcom/google/firebase/components/Component<*>;"
    nop

    .line 70
    invoke-static {p2}, Lcom/google/firebase/components/ComponentRuntime;->toProviders(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 71
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/components/ComponentRegistrarProcessor;->NOOP:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    .line 68
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V

    .line 73
    return-void
.end method

.method public static builder(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/ComponentRuntime$Builder;
    .locals 1
    .param p0, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;

    .line 77
    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/ComponentRuntime$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private discoverComponents(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 110
    .local p1, "componentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "runAfterDiscovery":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inject/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .local v2, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;"
    :try_start_1
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/ComponentRegistrar;

    .line 117
    .local v3, "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    if-eqz v3, :cond_0

    .line 118
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    invoke-interface {v4, v3}, Lcom/google/firebase/components/ComponentRegistrarProcessor;->processRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Lcom/google/firebase/components/InvalidRegistrarException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v3    # "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    :cond_0
    goto :goto_1

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 123
    const-string v4, "ComponentDiscovery"

    const-string v5, "Invalid component registrar."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v2    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;"
    .end local v3    # "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    :goto_1
    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/components/Component<*>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Component;

    .line 134
    .local v3, "component":Lcom/google/firebase/components/Component;
    invoke-virtual {v3}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 135
    .local v7, "anInterface":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "kotlinx.coroutines.CoroutineDispatcher"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    iget-object v8, p0, Lcom/google/firebase/components/ComponentRuntime;->processedCoroutineDispatcherInterfaces:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 138
    goto :goto_4

    .line 140
    :cond_2
    iget-object v8, p0, Lcom/google/firebase/components/ComponentRuntime;->processedCoroutineDispatcherInterfaces:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v7    # "anInterface":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 144
    .end local v3    # "component":Lcom/google/firebase/components/Component;
    :cond_4
    :goto_4
    goto :goto_2

    .line 146
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    invoke-static {p1}, Lcom/google/firebase/components/CycleDetector;->detect(Ljava/util/List;)V

    goto :goto_5

    .line 149
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v3, "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/components/Component<*>;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-static {v3}, Lcom/google/firebase/components/CycleDetector;->detect(Ljava/util/List;)V

    .line 154
    .end local v3    # "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/components/Component<*>;>;"
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/Component;

    .line 155
    .local v4, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    new-instance v5, Lcom/google/firebase/components/Lazy;

    new-instance v6, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V

    invoke-direct {v5, v6}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 162
    .local v5, "lazy":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<*>;"
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    nop

    .end local v4    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v5    # "lazy":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<*>;"
    goto :goto_6

    .line 165
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentRuntime;->processInstanceComponents(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processSetComponents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processDependencies()V

    .line 168
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/components/Component<*>;>;"
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 170
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 171
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_7

    .line 172
    :cond_8
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->maybeInitializeEagerComponents()V

    .line 173
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private doInitializeEagerComponents(Ljava/util/Map;Z)V
    .locals 5
    .param p2, "isDefaultApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 317
    .local p1, "componentsToInitialize":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 319
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inject/Provider;

    .line 321
    .local v3, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isAlwaysEager()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isEagerInDefaultApp()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 322
    :cond_0
    invoke-interface {v3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 324
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v3    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_1
    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    invoke-virtual {v0}, Lcom/google/firebase/components/EventBus;->enablePublishingAndFlushPending()V

    .line 327
    return-void
.end method

.method private static iterableToList(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 192
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 196
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$processInstanceComponents$2(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .param p0, "deferred"    # Lcom/google/firebase/components/OptionalProvider;
    .param p1, "castedProvider"    # Lcom/google/firebase/inject/Provider;

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/OptionalProvider;->set(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method static synthetic lambda$processSetComponents$3(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .param p0, "existingSet"    # Lcom/google/firebase/components/LazySet;
    .param p1, "castedProvider"    # Lcom/google/firebase/inject/Provider;

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/LazySet;->add(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method static synthetic lambda$toProviders$1(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0
    .param p0, "registrar"    # Lcom/google/firebase/components/ComponentRegistrar;

    .line 186
    return-object p0
.end method

.method private maybeInitializeEagerComponents()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 177
    .local v0, "isDefaultApp":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/components/ComponentRuntime;->doInitializeEagerComponents(Ljava/util/Map;Z)V

    .line 180
    :cond_0
    return-void
.end method

.method private processDependencies()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Component;

    .line 349
    .local v1, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Dependency;

    .line 350
    .local v3, "dependency":Lcom/google/firebase/components/Dependency;
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/components/LazySet;->fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 353
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isRequired()Z

    move-result v4

    if-nez v4, :cond_1

    .line 358
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 359
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->empty()Lcom/google/firebase/components/OptionalProvider;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 354
    :cond_1
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    .line 357
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 355
    const-string v4, "Unsatisfied dependency for component %s: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    .end local v3    # "dependency":Lcom/google/firebase/components/Dependency;
    :cond_2
    :goto_2
    goto :goto_1

    .line 363
    .end local v1    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    :cond_3
    goto :goto_0

    .line 364
    :cond_4
    return-void
.end method

.method private processInstanceComponents(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 200
    .local p1, "componentsToProcess":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 202
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    goto :goto_0

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inject/Provider;

    .line 207
    .local v3, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/Qualified;

    .line 208
    .local v5, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 209
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    :cond_1
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/inject/Provider;

    .line 213
    .local v6, "existingProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    move-object v7, v6

    check-cast v7, Lcom/google/firebase/components/OptionalProvider;

    .line 215
    .local v7, "deferred":Lcom/google/firebase/components/OptionalProvider;, "Lcom/google/firebase/components/OptionalProvider<Ljava/lang/Object;>;"
    move-object v8, v3

    .line 216
    .local v8, "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    new-instance v9, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v8}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v5    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    .end local v6    # "existingProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    .end local v7    # "deferred":Lcom/google/firebase/components/OptionalProvider;, "Lcom/google/firebase/components/OptionalProvider<Ljava/lang/Object;>;"
    .end local v8    # "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    :goto_2
    goto :goto_1

    .line 219
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v3    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_2
    goto :goto_0

    .line 220
    :cond_3
    return-object v0
.end method

.method private processSetComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v1, "setIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    iget-object v2, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 228
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/Component;

    .line 231
    .local v4, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v4}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/inject/Provider;

    .line 237
    .local v5, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v4}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/Qualified;

    .line 238
    .local v7, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v7    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    goto :goto_1

    .line 243
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    .end local v4    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v5    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_2
    goto :goto_0

    .line 245
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 246
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/Qualified;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/google/firebase/components/LazySet;->fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 250
    :cond_4
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/LazySet;

    .line 251
    .local v4, "existingSet":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/inject/Provider;

    .line 253
    .local v6, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    move-object v7, v6

    .line 254
    .local v7, "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    new-instance v8, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v8, v4, v7}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v6    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    .end local v7    # "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    goto :goto_3

    .line 257
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    .end local v4    # "existingSet":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<Ljava/lang/Object;>;"
    :cond_5
    :goto_4
    goto :goto_2

    .line 258
    :cond_6
    return-object v0
.end method

.method private static toProviders(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation

    .line 184
    .local p0, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/components/ComponentRegistrar;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/ComponentRegistrar;

    .line 186
    .local v2, "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    new-instance v3, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v2    # "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    goto :goto_0

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method public discoverComponents()V
    .locals 1

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/components/ComponentRuntime;->discoverComponents(Ljava/util/List;)V

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getAllComponentsForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeferred(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Deferred;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 270
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/ComponentRuntime;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    .line 271
    .local v0, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->empty()Lcom/google/firebase/components/OptionalProvider;

    move-result-object v1

    return-object v1

    .line 274
    :cond_0
    instance-of v1, v0, Lcom/google/firebase/components/OptionalProvider;

    if-eqz v1, :cond_1

    .line 275
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/components/OptionalProvider;

    return-object v1

    .line 277
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/components/OptionalProvider;->of(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/components/OptionalProvider;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    monitor-enter p0

    .line 264
    :try_start_0
    const-string v0, "Null interface requested."

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inject/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 263
    .end local p0    # "this":Lcom/google/firebase/components/ComponentRuntime;
    .end local p1    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initializeAllComponentsForTests()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inject/Provider;

    .line 343
    .local v1, "component":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 344
    .end local v1    # "component":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    goto :goto_0

    .line 345
    :cond_0
    return-void
.end method

.method public initializeEagerComponents(Z)V
    .locals 3
    .param p1, "isDefaultApp"    # Z

    .line 301
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 309
    :cond_0
    monitor-enter p0

    .line 310
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 311
    .local v0, "componentsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->doInitializeEagerComponents(Ljava/util/Map;Z)V

    .line 313
    return-void

    .line 311
    .end local v0    # "componentsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$discoverComponents$0$com-google-firebase-components-ComponentRuntime(Lcom/google/firebase/components/Component;)Ljava/lang/Object;
    .locals 2
    .param p1, "component"    # Lcom/google/firebase/components/Component;

    .line 158
    nop

    .line 159
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getFactory()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/RestrictedComponentContainer;

    invoke-direct {v1, p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;-><init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V

    .line 160
    invoke-interface {v0, v1}, Lcom/google/firebase/components/ComponentFactory;->create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public declared-synchronized setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/LazySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .local v0, "provider":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<*>;"
    if-eqz v0, :cond_0

    .line 285
    monitor-exit p0

    return-object v0

    .line 287
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 282
    .end local v0    # "provider":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<*>;"
    .end local p0    # "this":Lcom/google/firebase/components/ComponentRuntime;
    .end local p1    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

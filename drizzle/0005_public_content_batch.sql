-- Public editorial batch from the user-provided ZIS WeChat archive.
-- These cards are shared by every account.
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0157', NULL, '认识自己', '从《如何找到自己的热爱（或者说天命）｜上篇》中拆出“核与壳”的判断框架。', '这是个人方法论，发布时避免把“天命”表述成唯一答案。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 135,
  0, '用户提供的公众号原文；首轮精编样稿', '如何找到自己的热爱（或者说天命）｜上篇', '2025-01-18',
  '[2025-01-18]如何找到自己的热爱或者说天命上篇.md', '找热爱，先分清你的“核”和“壳”', '我们常把职业名称当成热爱，其实职业只是“壳”——完成一件事的手段；真正长期驱动你的，是“核”——你究竟想探索、解决或创造什么。

写作可以是壳，理解人性可以是核；做产品可以是壳，解决真实问题可以是核。

壳会随阶段改变，核往往更稳定。迷茫时，别只问“我该做什么工作”，先问：什么问题，我愿意研究很多年？', '职业只是完成一件事的手段，真正长期驱动你的，是你愿意反复探索、解决或创造的核心问题。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0158', NULL, '认识自己', '从《如何找到自己的热爱（或者说天命）｜上篇》中提炼识别天赋的方法。', '发布前可补充一个作者自己的具体例子，让观点更可信。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 132,
  0, '用户提供的公众号原文；首轮精编样稿', '如何找到自己的热爱（或者说天命）｜上篇', '2025-01-18',
  '[2025-01-18]如何找到自己的热爱或者说天命上篇.md', '天赋常藏在你觉得“不值一提”的事里', '天赋不一定表现为获奖、证书或某个体面的职业。

它更可能藏在那些你做起来很自然、别人却觉得很难的事情里：总能问到关键处，能把复杂概念讲明白，能迅速理解别人的需求，或能在混乱中搭出清晰框架。

因为它太顺手，你反而容易低估它。复盘过去时，别只找成绩，也要找那些“我怎么很自然就会了”的时刻。', '因为天赋使用起来太自然，人往往最容易低估它；识别天赋，要回看自己做起来轻松、别人却觉得困难的事情。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0159', NULL, '身心觉察', '从《到底如何“爱自己”？》中提炼可执行的自我照顾能力。', '可直接发布；避免把消费行为等同于爱自己。',
  'zis 紫苏｜公众号', '', '["身心觉察","公众号精简"]', 136,
  0, '用户提供的公众号原文；首轮精编样稿', '到底如何“爱自己”？｜过情关的第一个门槛', '2025-01-28',
  '[2025-01-28]到底如何爱自己过情关的第一个门槛.md', '取悦自己不是意愿，而是一种能力', '真正让自己开心，需要两步。

第一步，是足够了解自己：什么会让我恢复精力，什么只是短暂麻痹；什么是我真正想要的，什么只是别人觉得我应该喜欢的。

第二步，是允许自己行动：不因为羞耻、内疚或“别人会怎么看”而一再推迟。

知道自己需要什么，并愿意认真回应这种需要，才是可以练习的自我照顾。', '取悦自己需要先辨认真实需要，再允许自己行动；只知道却总是推迟，并没有完成自我照顾。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0160', NULL, '亲密关系', '从《到底如何“爱自己”？》中重新编辑自我负责与关系边界。', '涉及亲密关系边界，发布时应避免将伤害或受害经历归咎于当事人。',
  'zis 紫苏｜公众号', '', '["亲密关系","公众号精简"]', 130,
  1, '用户提供的公众号原文；首轮精编样稿', '到底如何“爱自己”？｜过情关的第一个门槛', '2025-01-28',
  '[2025-01-28]到底如何爱自己过情关的第一个门槛.md', '爱自己，不是把自己的需要变成别人的义务', '亲密关系可以承载照顾、陪伴和支持，但它不能替代一个人对自己的责任。

当我把快乐、安全感和自我认可全部交给别人，我也把生活的主动权一起交了出去。

更稳固的关系，不是“你必须填满我”，而是我能辨认并照顾自己的需要，同时也愿意清楚地表达、协商和接受对方的边界。', '关系可以承载互相照顾，却不能替代自我负责；把所有需要交给别人，也会把主动权一起交出去。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0161', NULL, '自由与商业', '从《为什么说上班耽误赚钱？》中区分岗位经验与商业能力。', '这是对部分岗位的经验性概括，发布时不要扩大为对所有职场和公司的判断。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 138,
  1, '用户提供的公众号原文；首轮精编样稿', '为什么说上班耽误赚钱？｜越去大厂越耽误', '2025-08-06',
  '[2025-08-06]为什么说上班耽误赚钱越去大厂越耽误.md', '工作经验，不一定等于商业能力', '一个岗位做了三年，可能积累了很深的专业经验，也可能只是把同一年的流程重复了三遍。

真正的商业能力，还包括理解一条完整链路：谁有需求，产品解决什么问题，用户为什么愿意付钱，价值如何交付，反馈又怎样推动下一次改进。

岗位经验当然有价值，但如果长期只看到自己的一小段，就容易把熟练误认为完整。', '岗位经验和商业能力不是一回事；除了专业熟练度，还需要理解需求、产品、成交、交付与反馈的完整链路。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0162', NULL, '生活思考', '从《你不一定要大量读书》中提炼阅读数量与问题意识的区别。', '可直接发布；保留“不反对读书，只反对数量崇拜”的语境。',
  'zis 紫苏｜公众号', '', '["生活思考","公众号精简"]', 136,
  0, '用户提供的公众号原文；首轮精编样稿', '你不一定要大量读书', '2025-08-24',
  '[2025-08-24]你不一定要大量读书.md', '别把“读了多少本”当成成长证据', '书只是获取信息的一种渠道。真正重要的，不是今年读完了多少本，而是你有没有一个想弄明白的问题。

有问题意识，读书、文章、播客、课程都会成为材料；没有问题意识，再多输入也可能只是信息堆积。

与其培养“必须大量读书”的焦虑，不如培养好奇心：我现在真正想搞懂什么？', '阅读数量不是成长本身；有问题意识，输入才会进入自己的知识结构，而不是停留在信息堆积。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0163', NULL, '生活思考', '从《你不一定要大量读书》中提炼知识与实践的关系。', '可直接发布；避免把阅读与实践写成非此即彼。',
  'zis 紫苏｜公众号', '', '["生活思考","公众号精简"]', 134,
  0, '用户提供的公众号原文；首轮精编样稿', '你不一定要大量读书', '2025-08-24',
  '[2025-08-24]你不一定要大量读书.md', '书是路标，行动才会产生一手经验', '一本书可以告诉你方向，却不能替你抵达。

知识只有进入行动，和真实世界发生碰撞，才会变成体感：哪些判断有效，哪些方法不适合你，哪些道理只是听起来正确。

阅读与行动不是对立的。阅读帮你少走一些弯路，行动让那些二手信息真正长成你自己的判断。', '阅读提供方向，行动提供反馈；二手知识只有经过真实实践，才会长成自己的判断。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0164', NULL, '自由与商业', '从《“做IP”是个伪命题》中提炼长期内容品牌的价值主张。', '这是内容品牌方法论，不保证流量或商业结果。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 140,
  1, '用户提供的公众号原文；首轮精编样稿', '“做IP”是个伪命题', '2026-04-23',
  '[2026-04-23]做IP是个伪命题.md', '做IP之前，先写下你愿意捍卫的价值', '做IP的第一步，不是立人设、找赛道或研究爆款，而是明确自己的底层价值主张。

你认为什么是真的、好的、值得被看见的？什么东西即使短期没有流量，你仍愿意持续表达并用行动为它站台？

技巧可以帮助内容被看见，但长期留下一个人的，往往是稳定、清晰且经得起行动检验的价值主张。', '内容品牌的根基不是人设技巧，而是一个人长期愿意表达、捍卫并用行动验证的价值主张。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0165', NULL, '自由与商业', '从《上班内耗的本质：活在“评价系统”中》提炼两套工作逻辑。', '这是对部分职场环境的经验性总结，发布时避免概括所有组织。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 142,
  1, '用户提供的公众号原文；首轮精编样稿', '上班内耗的本质：活在“评价系统”中', '2026-06-10',
  '[2026-06-10]上班内耗的本质活在评价系统中.md', '评价逻辑和价值逻辑，是两套系统', '在评价逻辑里，最重要的问题是：老板会怎么看我？这份材料够不够漂亮？我有没有证明自己认真思考过？

在价值逻辑里，问题变成：我解决了什么真实问题？帮助了谁？带来了什么可以被感知的改变？

很多内耗，不是因为事情太难，而是我们把大量精力用在证明自己，却很少获得创造价值的真实反馈。', '评价逻辑关注别人如何判断你，价值逻辑关注你实际解决了什么问题；两者长期错位，很容易制造内耗。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0166', NULL, '创作表达', '从《写给陷入“拧巴”的创作者》中拆分三种内容任务。', '可直接发布；三种分类是创作方法论，不是平台的统一标准。',
  'zis 紫苏｜公众号', '', '["创作表达","公众号精简"]', 142,
  0, '用户提供的公众号原文；首轮精编样稿', '写给陷入“拧巴”的创作者', '2026-07-10',
  '[2026-07-10]写给陷入拧巴的创作者.md', '作品内容、流量内容、获客内容，不是一回事', '作品内容服务表达：我想留下什么。

流量内容服务传播：用户为什么愿意点开、看完和转发。

获客内容服务转化：它要让合适的人理解产品、建立信任并采取行动。

三种内容都重要，也没有高低之分。真正让创作者拧巴的，是没有先确定任务，却要求同一篇内容同时做到纯粹、爆款和成交。', '作品、流量和获客内容承担不同任务；先确定这篇内容要完成什么，创作时才不会被三个目标同时拉扯。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0167', NULL, '创作表达', '从《写给陷入“拧巴”的创作者》中提炼目标冲突。', '可直接发布，可与上一张卡成组使用。',
  'zis 紫苏｜公众号', '', '["创作表达","公众号精简"]', 138,
  0, '用户提供的公众号原文；首轮精编样稿', '写给陷入“拧巴”的创作者', '2026-07-10',
  '[2026-07-10]写给陷入拧巴的创作者.md', '创作拧巴，常常是一篇内容想完成三个任务', '既想毫无保留地表达自己，又想照顾平台流量，还希望顺便完成产品转化，一篇内容背上三个目标，写起来当然会互相打架。

解决办法不是找到一个万能模板，而是在动笔前只回答一个问题：这篇内容最主要的任务是什么？

主任务确定后，其他目标可以兼顾，但不能争夺方向盘。', '创作中的拉扯，常来自一篇内容同时承担表达、传播和转化三个主任务；先确定唯一主任务，才能解除冲突。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0168', NULL, '自由与商业', '从《有技能有天赋，如何变成钱？》中提炼技能产品化。', '涉及商业转化，发布前应结合具体案例，不承诺收入结果。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 145,
  1, '用户提供的公众号原文；首轮精编样稿', '有技能有天赋，如何变成钱？', '2026-08-06',
  '[2026-08-06]有技能有天赋如何变成钱.md', '技能不是产品，翻译之后才可能被交易', '写作、咨询、占星、设计、编程，这些首先都是技能。技能属于你，但用户不会仅仅因为你“会”就付钱。

从技能走向产品，需要完成一次向外翻译：

我能帮助谁？
解决什么具体问题？
交付什么结果？
用户如何判断它有效？

当答案变得清楚，能力才从一项自我积累，变成别人能够理解、选择和购买的产品。', '能力要变成产品，需要被翻译成明确的服务对象、具体问题、交付结果与验证方式。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0169', NULL, '认识自己', '从《有技能有天赋，如何变成钱？》中提炼行动与反馈对天赋识别的作用。', '可直接发布；避免把天赋写成固定不变的先天属性。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 140,
  0, '用户提供的公众号原文；首轮精编样稿', '有技能有天赋，如何变成钱？', '2026-08-06',
  '[2026-08-06]有技能有天赋如何变成钱.md', '天赋不是想出来的，是在反馈中被看见的', '一个人很难仅靠自我分析确认天赋，因为真正自然的能力，常常会被自己当作“这不是很普通吗”。

只有开始做事、创造和交付，外界才会给你反馈：别人反复来问你什么？你在哪些事情上明显更快、更深或更有自己的方法？

行动不是天赋确认后的下一步。行动本身，就是发现和训练天赋的过程。', '人很难凭空确认自己的天赋；行动与外界反馈，既能让天赋被看见，也能让它被持续训练。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0170', NULL, '认识自己', '从《在意他人评价/讨好型人格本质是因为缺乏「主体性」》中提炼注意力归属。', '避免把主体性写成自我中心；重点是恢复判断和选择。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 133,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '在意他人评价/讨好型人格本质是因为缺乏「主体性」｜31岁教会我的31件事（五）', '2025-06-11',
  '[2025-06-11]在意他人评价讨好型人格本质是因为缺乏主体性31岁教会我的31件事五.md', '主体性，从把注意力收回自己开始', '一进入社交场景，我们很容易先问：别人会怎么看我？

这个问题把判断权交了出去。把注意力收回来，不是变得不顾别人，而是先确认：我真实的感受是什么？我需要什么？这件事是否符合我的价值？

主体性也体现在信息选择上。别让推荐流替你决定每天思考什么，主动寻找与你当前目标有关的信息。你仍然会听取评价，但不再把评价当成自己的定义。', '主体性不是不顾别人，而是把评价从人生裁判席移回参考席。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0171', NULL, '自由与商业', '从《自由职业唤醒了我的生命力》中提炼自由职业的反馈价值。', '属于个人职业体验，不要写成适用于所有人的职业结论。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 130,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '自由职业唤醒了我的生命力', '2025-07-06',
  '[2025-07-06]自由职业唤醒了我的生命力.md', '自由职业最稀缺的，不只是时间自由', '自由职业真正改变人的，未必是可以在哪里工作，而是价值反馈变得更近。

你提出一个想法、做出一个产品、收到市场回应，再根据反馈调整。创造、验证和承担结果之间，不再隔着很长的组织链条。

这种闭环会放大主动性，也会放大风险。它不是更轻松的工作方式，而是一种更直接地面对用户、收入和选择后果的方式。', '自由职业的核心体验，是缩短创造价值与获得反馈之间的距离。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0172', NULL, '认识自己', '从《强者必过这一关》中提炼结果与自我价值解绑。', '用个人成长观点表达，避免承诺“不怕失败就一定成功”。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 128,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '强者必过这一关｜31岁教会我的31件事（六）', '2025-07-13',
  '[2025-07-13]强者必过这一关31岁教会我的31件事六.md', '能承受失去，才不会把自我价值绑在结果上', '很多恐惧并不来自失败本身，而来自我们偷偷给失败加上的解释：失去机会，等于我不够好；关系结束，等于我不值得被爱；项目没成，等于我没有能力。

真正需要练习的，是把“发生了什么”和“我是谁”分开。

结果会变化，身份也会变化，但一次得失不是对你整个人的终审判决。能承受失去，才有空间继续行动。', '把结果与自我价值解绑，失败才会重新变成信息，而不是判决。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0173', NULL, '选择与命运', '从《记录一次人生重要选择》中提炼外部好牌与内心选择的冲突。', '不要浪漫化裸辞或冲动决策，应保留现实条件与风险评估。',
  'zis 紫苏｜公众号', '', '["选择与命运","公众号精简"]', 131,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '记录一次人生重要选择｜命运深处有着宏大的公平', '2025-07-17',
  '[2025-07-17]记录一次人生重要选择命运深处有着宏大的公平.md', '别人眼里的好牌，不一定是你想过的人生', '一份稳定工作、一个体面标签、一条可预测的路线，可能都是别人眼里的“好牌”。但如果你每天都在消耗自己，牌面再漂亮，也未必是你真正想玩的那一局。

重要选择不是为了证明勇敢，而是诚实计算：留下的代价是什么？离开的风险是什么？我能承担多久？

成熟不是一味保住好牌，也不是冲动掀桌，而是知道自己愿意为什么负责。', '人生选择的标准，不只有牌面好不好，还有它是否通向你愿意负责的生活。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0174', NULL, '选择与命运', '从《建立人生主线的道与术》中提炼主线作为决策过滤器的作用。', '这是个人规划框架，不把人生主线包装成唯一正确答案。',
  'zis 紫苏｜公众号', '', '["选择与命运","公众号精简"]', 134,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '建立人生主线的道与术：三个层面与三个阶段', '2025-09-08',
  '[2025-09-08]建立人生主线的道与术三个层面与三个阶段.md', '人生主线的作用，是替你筛选支线', '人生主线不一定是一份终身职业，更像一个长期方向：你想持续解决什么问题，成为怎样的人，创造什么价值。

它最大的用处，不是让未来变得确定，而是在机会很多、信息很杂时替你做筛选。

面对一份工作、一段合作或一次学习，可以问：它是在补充我的能力、扩大我的视野，还是只在消耗时间？主线清楚，拒绝才不需要每次都从头纠结。', '主线不是标准答案，而是帮助你判断支线是否值得投入的过滤器。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0175', NULL, '选择与命运', '从《如何确定「我想要什么？」》中提炼结果问题与过程问题的差别。', '保留方法论属性，不承诺只要喜欢过程就能得到结果。',
  'zis 紫苏｜公众号', '', '["选择与命运","公众号精简"]', 137,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '如何确定「我想要什么？」', '2026-02-04',
  '[2026-02-04]如何确定我想要什么.md', '把“我想要什么”改成“我想做什么”', '“我想要什么”常常指向结果：收入、身份、自由、认可。可结果离当下很远，也容易混入别人的期待。

不妨换一个问题：为了接近那个结果，我愿意反复做什么？

想成为作家，意味着愿不愿意长期写；想做生意，意味着愿不愿意持续理解用户、交付和复盘。结果可以借鉴别人，过程却必须由你亲自承担。真正的选择，往往藏在你愿意重复的动作里。', '判断自己想要什么，要看你是否愿意长期承担通往它的过程。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0176', NULL, '亲密关系', '从《关于生育》中提炼生育选择的主体性。', '生育议题涉及健康、家庭与现实条件，发布前需核实表达并避免替他人下结论。',
  'zis 紫苏｜公众号', '', '["亲密关系","公众号精简"]', 126,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '关于生育｜想通这3点，我彻底消解了「生育焦虑」', '2026-02-17',
  '[2026-02-17]关于生育想通这3点我彻底消解了生育焦虑.md', '生育是权利，不是必须完成的人生任务', '生不生孩子，是一项长期、具体且不可替代的个人选择，不该只由年龄、社会时钟或“以后会不会孤独”的恐惧推动。

真正需要分清的是：我是在渴望养育一个具体的人，还是在逃避某种想象中的遗憾？我的身体、关系、经济和支持系统，能否承接这个决定？

生育不是人生合格证。选择生育或不生育，都需要知情、自由，以及对后果的承担。', '生育选择应当来自真实意愿和现实评估，而不是被社会时钟推着完成。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0177', NULL, '身心觉察', '从《把情绪当作「手段」而非「目的」》中提炼情绪与行动的关系。', '避免将情绪工具化为操控他人的手段。',
  'zis 紫苏｜公众号', '', '["身心觉察","公众号精简"]', 132,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '把情绪当作「手段」而非「目的」', '2026-03-12',
  '[2026-03-12]把情绪当作手段而非目的.md', '情绪可以被看见，但不必握着方向盘', '情绪出现时，第一步不是压住它，也不是立刻照着它行动，而是辨认：它在提醒我什么？

愤怒可能提示边界被侵犯，焦虑可能提示不确定，难过可能提示失去。看懂信号之后，再选择怎样表达、怎样行动。

内在平静不等于没有情绪，成熟也不是永远温和。你可以清楚表达不满，但不必把决定权交给最激烈的那一刻。', '情绪负责提供信号，行动仍应由清醒的判断决定。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0178', NULL, '亲密关系', '从《如何接受「不被爱」？》中提炼关系结果与自我价值解绑。', '作为关系观点发布，避免替具体关系中的当事人做决定。',
  'zis 紫苏｜公众号', '', '["亲密关系","公众号精简"]', 136,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '如何接受「不被爱」？', '2026-04-03',
  '[2026-04-03]如何接受不被爱.md', '不被某个人爱，不等于你不值得被爱', '关系结束时，我们很容易把“对方没有选择我”翻译成“我不够好”。可一个人的选择，还受到阶段、能力、需要和边界影响，它不是对你全部价值的测量。

接受不被爱，不是逼自己立刻放下，也不是否认难过，而是停止用对方的回应给自己定价。

你可以为失去哀伤，同时保留一个事实：这段关系没有继续，和你是否值得被爱，是两件事。', '一段关系的结果不能充当一个人全部价值的证明。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0179', NULL, '亲密关系', '从《如何接受「不被爱」？》中提炼支持独立性的爱。', '避免将任何单一关系观包装成唯一标准。',
  'zis 紫苏｜公众号', '', '["亲密关系","公众号精简"]', 127,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '如何接受「不被爱」？', '2026-04-03',
  '[2026-04-03]如何接受不被爱.md', '好的爱，是支持对方成为独立的人', '爱一个人，不等于拥有一个人。真正困难的部分，是承认对方有独立的欲望、节奏和选择，也承认这些选择未必总让我们满意。

如果爱只在对方配合、回应、满足期待时成立，它更像一份交换协议。

更成熟的关系，是双方都能表达需要，也都保有说不的权利。亲密不是消灭边界，而是在边界清楚之后，仍愿意靠近。', '亲密关系不是取消彼此的独立，而是在尊重边界后继续靠近。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0180', NULL, '身心觉察', '从《如何用脑科学改命（很干）》中提炼可执行的反应重写框架。', '原文涉及脑科学解释，发布前需核实相关术语；卡片只保留行为练习。',
  'zis 紫苏｜公众号', '', '["身心觉察","公众号精简"]', 138,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '如何用脑科学改命（很干）', '2026-04-10',
  '[2026-04-10]如何用脑科学改命很干.md', '改变自动反应，要经过觉察、拆解和小步重写', '改变一个反复出现的模式，可以先做三步。

觉察：在情绪和动作之间暂停，写下刚才发生了什么。拆解：追问自己在害怕哪个结果，以及这个结果是否必然发生。重写：不要要求一次彻底改变，只设计一个更小、更安全的新动作。

例如，从“不敢表达”开始，不必立刻公开演讲，可以先在一次低风险对话里说清一个需要。新的经验多一次，旧反应就少一点垄断。', '改变不是靠命令自己变勇敢，而是用小步行动为大脑补充新的经验。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0181', NULL, '认识自己', '从《「人如何成为自己」，我实践了一年》中提炼无保证条件下的坚持。', '作为个人经验表达，不把坚持本身等同于必然成功。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 129,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '「人如何成为自己」，我实践了一年｜腾讯离职一年后：', '2026-05-21',
  '[2026-05-21]人如何成为自己我实践了一年腾讯离职一年后.md', '信仰不是相信会赢，是不保证赢也愿意继续', '很多人把信念理解成“我相信结果一定会好”。可真正支撑长期行动的，常常不是结果保证，而是：即使暂时没有掌声、数据和确定性，我仍认为这件事值得做。

这不是盲目坚持。你仍然要看反馈、改方法、设止损。

信念决定的是愿不愿意继续投入，判断力决定的是如何投入。两者同时存在，才不会把坚持变成固执。', '信念提供继续行动的理由，反馈与判断负责校正行动的方向。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0182', NULL, '认识自己', '从《我真正想做的事跟我的工作经验毫不相关怎么办？》中提炼最小实验。', '避免暗示天赋可以替代训练、专业门槛或现实准备。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 135,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '"我真正想做的事跟我的工作经验毫不相关怎么办？”', '2026-05-22',
  '[2026-05-22]quot我真正想做的事跟我的工作经验毫不相关怎么办.md', '过去经验不相关，就从最小实验开始', '想做的事和过去履历无关，不代表必须立刻清零重来。更稳妥的方法，是先把它变成一个最小实验。

想写作，先连续发布十篇；想咨询，先完成几次低风险访谈；想做产品，先找到一个真实问题，做出可被使用的小版本。

实验会告诉你三件事：你是否喜欢过程、是否愿意练基本功、市场是否真的需要。履历不是通行证，行动产生的新证据才是。', '跨领域转向不必先做巨大决定，可以先用最小实验获取真实证据。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0183', NULL, '认识自己', '从《走出优绩主义的牢笼》中提炼擅长与喜欢的区别。', '避免否定专业训练和现实责任，鼓励渐进验证。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 139,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '走出优绩主义的牢笼｜不上班这一年：', '2026-05-28',
  '[2026-05-28]走出优绩主义的牢笼不上班这一年.md', '擅长完成任务，不等于知道自己喜欢什么', '长期接受标准化评价的人，很容易把“我做得好”误认成“我喜欢做”。因为拿高分、被表扬、升职，都会快速强化一条熟悉的路线。

判断喜欢，不能只看结果，还要看没有奖励时，你是否仍对过程好奇；遇到困难时，你是只想交差，还是愿意继续理解。

擅长是一种能力，喜欢是一种持续投入的倾向。它们重合当然很好，不重合时，也值得被诚实看见。', '外部奖励能证明你擅长完成要求，却不能替你回答是否喜欢这个过程。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0184', NULL, '自由与商业', '从《走出优绩主义的牢笼》中提炼兴趣与商业化的先后关系。', '涉及职业和收入决策，发布前需提醒读者评估现金流与风险。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 125,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '走出优绩主义的牢笼｜不上班这一年：', '2026-05-28',
  '[2026-05-28]走出优绩主义的牢笼不上班这一年.md', '先让喜欢的事养活精神，再验证能否养活生活', '一发现喜欢的事，就急着问“怎么变现”，很容易让它迅速变成另一份绩效任务。

不妨先允许它只提供好奇、能量和表达，再用低成本方式验证：谁需要它？愿意为什么付费？我能否稳定交付？

商业化不是兴趣的成人礼，也不是每个爱好都必须抵达的终点。先守住生活的现金流，再给喜欢的事一段不被收入追赶的生长期。', '兴趣可以先滋养人，再通过小规模验证判断它是否适合成为生意。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0185', NULL, '亲密关系', '从《回归「真」我，是一场大补》中提炼人不应被工具化。', '将原文价值判断落到关系与商业的具体边界上。',
  'zis 紫苏｜公众号', '', '["亲密关系","公众号精简"]', 132,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '回归「真」我，是一场大补', '2026-05-29',
  '[2026-05-29]回归真我是一场大补.md', '人是目的，不是手段', '当我们只问“这个人能给我什么”，关系就开始变成功能交换；当商业只问“怎样让他买”，用户也会被缩减成一串转化数据。

“人是目的”不是拒绝合作和交易，而是承认对方有自己的处境、需要和选择权。

好的关系可以互相支持，好的产品也可以获得利润，但前提是：不靠制造不适合对方的需求，不把信任当成一次性消耗品。', '关系和商业都可以交换价值，但不应把具体的人缩减成可利用的工具。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0186', NULL, '身心觉察', '从《疗愈只能扶“弱”，行动才能变“强”》中提炼稳定与行动的互补关系。', '心理健康议题需谨慎；不要贬低治疗，也不要把行动替代专业帮助。',
  'zis 紫苏｜公众号', '', '["身心觉察","公众号精简"]', 124,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '疗愈只能扶“弱”，行动才能变“强”', '2026-06-03',
  '[2026-06-03]疗愈只能扶弱行动才能变强.md', '疗愈帮助止血，行动帮助积累新证据', '理解创伤、安抚情绪、获得专业支持，可以让一个人从失衡中慢慢稳定下来。但稳定之后，自我效能感往往还需要行动来重建。

完成一次小承诺、表达一个边界、解决一个具体问题，都会给自己补充新的证据：我可以应对，我能影响结果。

疗愈与行动不是二选一。需要休息时先休息，需要帮助时求助；有余力时，再用足够小的行动把力量一点点拿回来。', '疗愈恢复安全感，行动通过真实经验重建对自身能力的信任。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0187', NULL, '自由与商业', '从《如果你被大厂裁员，一定别着急找工作》中提炼缓冲期决策。', '涉及就业和财务决策，必须强调现金流、家庭责任和个体差异。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 123,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '如果你被大厂裁员，一定别着急找工作，而是去做这件事：', '2026-06-04',
  '[2026-06-04]如果你被大厂裁员一定别着急找工作而是去做这件事.md', '被裁员后，先算清缓冲期，再决定下一步', '被裁员后的第一反应常常是尽快找到下一份相似工作，因为它最熟悉，也最能缓解焦虑。

但如果现金流允许，可以先算清一段有限的缓冲期：每月必要支出是多少，家庭责任有哪些，最晚何时必须恢复收入。

在边界明确的时间里，再复盘自己想保留什么、想离开什么，并做几个低成本职业实验。不是拒绝上班，而是避免只因恐惧复制上一段路径。', '职业空档的价值来自有边界的探索，而不是没有财务底线的冒险。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0188', NULL, '认识自己', '从《「优绩主义」没有错，但它会锁死你的人生可能性》中提炼解题与出题的差别。', '不否定教育和专业训练，重点补充创造性能力。',
  'zis 紫苏｜公众号', '', '["认识自己","公众号精简"]', 138,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '「优绩主义」没有错，但它会锁死你的人生可能性', '2026-06-05',
  '[2026-06-05]优绩主义没有错但它会锁死你的人生可能性.md', '会做标准答案，不等于会提出问题', '优绩体系训练了很多重要能力：理解规则、稳定执行、在明确标准下交付结果。问题是，如果一个人只会等待题目，就容易在没有标准答案的场景里失去方向。

创造需要另一组能力：观察真实世界，提出值得解决的问题，为问题设定标准，再承受试错。

会解题不是缺点，但别让它成为唯一能力。偶尔问自己：如果没人给我题目，我最想解决什么？', '标准化训练擅长培养解题者，创造还需要主动发现并定义问题。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0189', NULL, '自由与商业', '从《不想上班，是因为你不想再背叛自己》中提炼个人与组织的错配。', '避免把所有职场不适都归因于组织，也不直接建议离职。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 134,
  1, '用户提供的公众号原文；深度筛选并重新编辑', '不想上班，是因为你不想再背叛自己｜3400 字深度剖析', '2026-07-22',
  '[2026-07-22]不想上班是因为你不想再背叛自己3400字深度剖析.md', '内耗有时是个人需要与组织规则的错配', '职场内耗不一定说明你太脆弱，也不一定说明公司有问题。很多时候，是个人需要与组织规则长期错配。

你想要自主，岗位要求服从；你重视创造，工作奖励稳定复用；你需要明确反馈，环境却长期模糊。

先把冲突说具体，再决定是调整期待、协商边界、换岗，还是准备离开。看见错配，不是为了马上辞职，而是停止把所有不适都解释成自己的失败。', '把内耗还原成具体的需求错配，才可能找到比自责更有效的解法。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0190', NULL, '自由与商业', '从《IP一定要创造思想稀缺性》中提炼定位与价值主张的差别。', '作为内容商业方法论发布，避免许诺流量或变现结果。',
  'zis 紫苏｜公众号', '', '["自由与商业","公众号精简"]', 140,
  1, '用户提供的公众号原文；深度筛选并重新编辑', 'IP 一定要创造「思想稀缺性」，承载某类人群的潜意识投射，并为Ta们引领一种新的意识形态', '2026-08-19',
  '[2026-08-19]IP一定要创造思想稀缺性承载某类人群的潜意识投射并为Ta们引领一种新的意识形.md', '定位回答你做什么，价值主张回答别人为何长期关注', '“我教写作”“我做咨询”“我讲职场”只能说明你提供什么，还不足以解释别人为什么要长期关注你。

真正形成辨识度的，是稳定的价值主张：你如何看待问题，反对什么，相信什么，想把人带向怎样的生活。

功能可以被复制，观点也会被模仿，但一套长期一致、由真实经历支撑的判断，会逐渐形成信任。定位让人快速理解你，价值主张让人记住你。', '内容定位解决识别问题，稳定的价值主张解决长期信任问题。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);
--> statement-breakpoint
INSERT OR IGNORE INTO contents (
  id, owner_account_id, category, angle, action, source_name, source_url, product_fit, priority,
  requires_verification, origin, source_article, source_date, source_file, title, draft, insight, created_at, updated_at
)
VALUES (
  'zis-0191', NULL, '选择与命运', '从《陈婧霏说适合我的世界并不存在直到我把它创造出来》中提炼理想与方法的关系。', '涉及人物观点时不要虚构引语；卡片采用重新编辑后的独立表达。',
  'zis 紫苏｜公众号', '', '["选择与命运","公众号精简"]', 137,
  0, '用户提供的公众号原文；深度筛选并重新编辑', '陈婧霏说适合我的世界并不存在直到我把它创造出来', '2026-08-22',
  '[2026-08-22204909]陈婧霏说适合我的世界并不存在直到我把它创造出来.md', '理想主义也需要一个与现实连接的接口', '理想不是因为用了方法、学了表达、理解了传播，就变得不纯粹。恰恰相反，如果一种价值无法被别人理解、使用和支持，它很难在现实里持续。

技巧只是接口：它帮助作品被看见，帮助产品抵达需要的人，帮助理想获得继续生长的资源。

真正要警惕的，不是使用方法，而是为了方法放弃最初想守住的东西。价值决定方向，技巧负责连接。', '价值决定方向，方法负责让价值在现实中被理解、被使用并持续下去。',
  '2026-08-22T00:00:00.000Z', '2026-08-22T00:00:00.000Z'
);

Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929CE140FD8
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 18:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdW0DDHPYqX5qhf+yvWo1+427Lbq1oJ1b/oxwO97LTA=; b=rJiPgZp3av2Q/K
	uEPkahRjLg+kFL+p4ZYg69qrFgXZU1uPkrVm9zZ1h4aDfmx5OyPE2noVo8oZtk3lkpyzDZmMWleig
	VcDZBH8w+H6UjvgEnx7V42RXrO+tqMm2qFLIJNImW0MVCwxKJdX1bskqoWaWdQIEF82eQHnBtA1Eg
	PIl8zjVpKG8ppAXc+hEUf0P26e714kKKYhhQeEAcux6qT4vLwH2IP9MyvikKYj3Nf5wbxFjE0ajqJ
	BpD6Cx3p1JWXW1ya/YOEmfpaV8gypa3sqJwLzM2m3ZsdPb4B/UAX1uawlO14kvNzXEDTT6JPhj8Jl
	94w4Z/O1Gbd6OMaSmr1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVPx-0007c1-W6; Fri, 17 Jan 2020 17:28:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVPn-0007UC-RD; Fri, 17 Jan 2020 17:28:13 +0000
Received: by mail-qt1-x841.google.com with SMTP id i13so22352213qtr.3;
 Fri, 17 Jan 2020 09:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YJBe+PR1JTzkbV6VdX/ClFM8UuTfYuVGKNcb10Up+LM=;
 b=DbHiqO+e6kYuR6bMRUFqkRzJXzREnc/t8WeVUwNtwBq0US0ALqFtfBS3k8Ar5PzFae
 jpbiR7Ax+NvFzgNUZfzP6b4KBWdJJ8us7/sDH5Tiro8mnHYZM1bos9P/GDhAcxVHXG4b
 +CqRW+gbtb40Tq4JQ9+XfDuAtGc8xx7XWoPbLCDa9sXO0xSMc54OuWYlMPO3hMfg3xGs
 R6SRfw70eNBH9z1vinkvQf3Pkmv//DOGZzpDO/JeaaQZKfMlTJoC34/zqw6bnCacSApd
 hf6+skAgQQBrKH5W5od7c18HNBincCZTYsXdKlpO3ehhcjXZitzgNqPGCAFsoZlAoM4q
 MvUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=YJBe+PR1JTzkbV6VdX/ClFM8UuTfYuVGKNcb10Up+LM=;
 b=OWymrAHYj6KgH4ABUmnAiA9NifrbUZsha/lQpVebFvHqU0nOu+ihpauO26wQ0K/huK
 gcwB+xt2nL22yi1SDdHvR92pdn4T0wpPcelvJHxjBYbBuLt2uz3Fq4HdYW3DKJbh9t8K
 G5t9JgNblbrW+vahVlhi3IAOPmFp2eJmDVRl+u2864v4qDolMcZJdJfWtHvULsCEBBjI
 lqQ4DzfxLLu95Cxjjs45XL+eKI3N3G3RbwXm+dkRb6cVO977+NhaCJPef0a9kVT4Nk/i
 0VCkxdLw27dKoi/3OFES5bhyXtJjcBpLjiC6dAvxfxIVwocZY2g+ZulJhk/S2Qu58zIj
 s+Qw==
X-Gm-Message-State: APjAAAUuzIyUoTgJm1nzIrlF0Y/vLZ+rbUf7JCrqx8H6YpZKuWgWAHeE
 Rl9Nzk9hP6sY/gwvtHEfLEA=
X-Google-Smtp-Source: APXvYqz2O/xFh6ygdxVfF7TRwAgb6tMQGsH1goOEKwF730KRP0mdEDko+yi0ag0UIHTaUnjOw9qRYQ==
X-Received: by 2002:aed:2150:: with SMTP id 74mr8430727qtc.323.1579282089045; 
 Fri, 17 Jan 2020 09:28:09 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::1:7d10])
 by smtp.gmail.com with ESMTPSA id r37sm13251937qtj.44.2020.01.17.09.28.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Jan 2020 09:28:08 -0800 (PST)
Date: Fri, 17 Jan 2020 09:28:06 -0800
From: Tejun Heo <tj@kernel.org>
To: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
Subject: Re: [PATCH 2/3] cgroup: Iterate tasks that did not finish do_exit()
Message-ID: <20200117172806.GK2677547@devbig004.ftw2.facebook.com>
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
 <20200117151533.12381-3-mkoutny@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117151533.12381-3-mkoutny@suse.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_092811_883227_703D9FD0 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (htejun[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, Li Zefan <lizefan@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-kselftest@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, matthias.bgg@gmail.com,
 cgroups@vger.kernel.org, alex.shi@linux.alibaba.com, kernel-team@android.com,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 04:15:32PM +0100, Michal Koutn=FD wrote:
> PF_EXITING is set earlier than actual removal from css_set when a task
> is exitting. This can confuse cgroup.procs readers who see no PF_EXITING
> tasks, however, rmdir is checking against css_set membership so it can
> transitionally fail with EBUSY.
> =

> Fix this by listing tasks that weren't unlinked from css_set active
> lists.
> It may happen that other users of the task iterator (without
> CSS_TASK_ITER_PROCS) spot a PF_EXITING task before cgroup_exit(). This
> is equal to the state before commit c03cd7738a83 ("cgroup: Include dying
> leaders with live threads in PROCS iterations") but it may be reviewed
> later.

Yeah, this looks fine to me.  Any chance you can order this before the
clean up so that we can mark it for -stable.

Thanks.

-- =

tejun

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

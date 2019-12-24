Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5C712A1D8
	for <lists+linux-mediatek@lfdr.de>; Tue, 24 Dec 2019 14:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2j8uCbzY59RL47uMoLLre1xdbBlwW6BGZeeS3YpuhM=; b=dGt8vvsPknK18K
	BaFY5tBEyjOHQTZaDZXqe8++/WUFV1fyL4/Kr1lMiqcYBKIi8Jnd0cRIagtrxJ5OTrpSqK5As7XaG
	dNPBqIgoT1HHpIkKTje2nK7Mhwcdbjqedou89RqzNF8S4xYLl8IHn2TVxfyQmIHBmKYKws1dhiXBg
	Uw+6e8qzOcLW7W0e4UWJtS4KWPketw3FqTKW+XjbND8qeKOWwPynXDRaIIkgju3fzTn2VBPhQZutR
	bTJ+B5j/zxylXY4BjGiyF0NVbqI0MQAuE3xCXTRg3dlzSC5JMyCF3HYrKJtcy9ESQTNtdJpJalQqo
	MnoswqanFoqGEply6rhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkWx-0002V9-1B; Tue, 24 Dec 2019 13:47:23 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkWt-0002UF-MT
 for linux-mediatek@lists.infradead.org; Tue, 24 Dec 2019 13:47:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id a203so16427922qkc.3
 for <linux-mediatek@lists.infradead.org>; Tue, 24 Dec 2019 05:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=gJSU2c7V0b8ZdILNENIi9JaOANjv/UG/dY9rvMfObQ0=;
 b=a1XflIgSEYNpJvpUhAyvvY/8pqmTpscYLPyOlUzC6qYXGsT/ftktR5ECLrk070j9Zw
 Qe6KW4fiampfcyY1sdzubGbwR3jBOQ3XqKWA4SHzzAlKVnpibJXXpttbqSVxLW3wU6rm
 kIlmeHuOexw62UGQESniUTMe2cEa6jZB/DDRR2QuJaJfO+ukdC0uBfc4QGNg9pFJFueo
 c3NGXtWjcKBjxu+DLtY5rBlhjOFGqozv0V1IqmUc44RSIhOWlRgFo7u08GVro97P8f3A
 2FPXjktQebmxkgNmNMHM+qx20hfmZyHYbPGZZiRc3J0lElrF052KAhcVsfwYMURkegtb
 8Eeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=gJSU2c7V0b8ZdILNENIi9JaOANjv/UG/dY9rvMfObQ0=;
 b=Qs+MhxTgPcFivXT5/zULoKIkF1xZQbj97vFY7NJgJcNiXT6ghlwZ75hF5yPlnuAvdy
 0YAhT9GS436qKfG3t8kbag9Dt0N1/ljlWe6FaDTz5B8/n2IoMRFPWxOF30d4DO2czP3T
 ScscmOcC+aKitBlciFBXYx74dZAa1OZxOXhUmuYQJGdHAFYh/NnYh7lPQ+EoaYHLdisj
 79K94orOmhzncq+EVPfOD06HOoB8QEp+XnbcrILmUkyH+019AdJCKMNlvVh8nAw3RE7p
 I0/34osx7XYKJC4KBgvI1knYqMO1sVH70hi3XdU39hLRkEWVLaOhsi8NIzqY2sd3CNEi
 HGuA==
X-Gm-Message-State: APjAAAWokoU9j6V/lXvL+skDd5utS+rHaiRWqrQrePEk/T5MbMRAgFOo
 IvwqWuVqRzBU/Y6l8ZMNJN4KLnh8dvk=
X-Google-Smtp-Source: APXvYqwIoLmnlGecAq3xrlAoCzXA4v5nuuwvRo44+mVVe8A3lZxILyFHSq9kRU8TkLB5N4Pp4CdLPA==
X-Received: by 2002:a37:8085:: with SMTP id
 b127mr30055985qkd.424.1577195237928; 
 Tue, 24 Dec 2019 05:47:17 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id r44sm7586209qta.26.2019.12.24.05.47.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 05:47:17 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
Date: Tue, 24 Dec 2019 08:47:15 -0500
Message-Id: <5E08DE19-5B71-4245-8908-548BB4FA861F@lca.pw>
References: <1577169946.4959.4.camel@mtkswgap22>
In-Reply-To: <1577169946.4959.4.camel@mtkswgap22>
To: Miles Chen <miles.chen@mediatek.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_054719_780855_DC04CECF 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



> On Dec 24, 2019, at 1:45 AM, Miles Chen <miles.chen@mediatek.com> wrote:
> 
> We use kmemleak too, but a memory leakage which is caused by
> alloc_pages() in a kernel device driver cannot be caught by kmemleak.
> We have fought against this kind of real problems for a few years and 
> find a way to make the debugging easier.
> 
> We currently have information during OOM: process Node, zone, swap, 
> process (pid, rss, name), slab usage, and the backtrace, order, and
> gfp flags of the OOM backtrace. 
> We can tell many different types of OOM problems by the information
> above except the alloc_pages() leakage.
> 
> The patch does work and save a lot of debugging time.
> Could we consider the "greatest memory consumer" as another useful 
> OOM information?

This is rather situational considering there are memory leaks here and there but it is not necessary that straightforward as a single place of greatest consumer.

The other question is why the offensive drivers that use alloc_pages() repeatedly without using any object allocator? Do you have examples of this in drivers that could happen?
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

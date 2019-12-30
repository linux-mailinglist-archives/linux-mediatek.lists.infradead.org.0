Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D92412CBC0
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 02:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iPUlyPFkLmw2aqron36YV324M9+1e8qSnpmf+f6J90=; b=BKsaO/7H0FDSeZ
	EI8Y93mT6qXEh0Ss7K4QqeMXQmKJ4GGp7HruKVrvTUdUkaXwjlw+WESbnMI1PeKJ6gc3nKm6jZP0X
	YHDM7PdyZnYb6hYSAv6NIQK5fHnvP/YihJZ0AS17DEdu5MmRUErZKcfcWl9jzfZZeAtdbWHE30x3T
	gOTbCunMrybWGAYf5n7M/rNB+fcPtxR8il4b25EQjiQZBp119DVPDh2pieoEIhT5kfI9YXVb+0m5G
	OwCe+MxCcCuTClTDgAQYDrA+bC2o5lzmtubGRv+3eSKpAuX6dQP3CBv0ibcxDcttiDNsdwQomPWJ/
	tUFU5MK0+QDv5J1Fntww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilkDE-0001gp-Hu; Mon, 30 Dec 2019 01:51:16 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilkDA-0001eJ-2q
 for linux-mediatek@lists.infradead.org; Mon, 30 Dec 2019 01:51:13 +0000
Received: by mail-qt1-x843.google.com with SMTP id q20so28793553qtp.3
 for <linux-mediatek@lists.infradead.org>; Sun, 29 Dec 2019 17:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=DQz0FjxnkcrZB95uhqUPghs+uepx++Cg0e03CfkfPoI=;
 b=NQAQr7m/F84JH6xZgLELtcSkwP8nDBWDreyVi/HwY6F+R43tc1G6CqQ1ZDu4ZZlufq
 3Xb8mxcqIxjSyfjiAkSJ603jB/Iio7i+XeJiG5MjAsV2E7hiLnNEKcLzmeEipmCg1Yut
 h41C8++kK5khfZ1ScnrCeyJGectHWrMS2ZNrxeyGnLhDoz2k0QtWDU7AydNZctkJI62n
 NTHF7uI+hScdljY+KOxgYAXbn8rZ8PP83oIIS7vWGV5y1RdsKKMflYrlbo0VevLH+nOX
 R0H8MB/RhTNYwvUjha/DLBj08zFieM+CNEV1v1ORLVREf2uGTMxN/s/RkqcLp7rJ2eBn
 2jJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=DQz0FjxnkcrZB95uhqUPghs+uepx++Cg0e03CfkfPoI=;
 b=QOWUk4wgOB0XMLJV/hnumYXeUdimO0qsDQfCrr6pvc05DF16Mni8st2KXsYUJF04WX
 bovFR0EOnsXNYxQO2c/SL1h7UljxRmhN5CV9FCkzksqADvc5MEsji3LdKsixZHo9uczr
 2lG1aOTESF6MSozpv2kGhCQ8ojG2IwIAfvUlozORQrBxHZ7exD4Pe8nt0s8wFGOxFhob
 GhHspv2ansK64vaIbTL1zmEUbEOffC6LAZEIqO3yfGZJe78w6SxvQM2WcYhn/NYYpqHd
 revF0oDLaoOGBnQJjeFhmKSHcZ4rY6l1Pcm1IXu7pFNKf7oX5ECq5d8PvQObaJwll+87
 odZw==
X-Gm-Message-State: APjAAAUIpgudaoyrKIu0HHTOljB5Rt9/4n/t90+PLjE8dW08N9ZvTp3J
 LjPX3tpzK1JuKzjTcAZh/hzT1w==
X-Google-Smtp-Source: APXvYqwzmOuuJ/FWC8WUTBhMOEyOdQD8LKElXYoAdbbrcMNiJXbkj+74dGHMmtNBqsGrYq3Tk3/Bhg==
X-Received: by 2002:ac8:1109:: with SMTP id c9mr29537417qtj.251.1577670670398; 
 Sun, 29 Dec 2019 17:51:10 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id q126sm12015666qkd.21.2019.12.29.17.51.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Dec 2019 17:51:09 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
Date: Sun, 29 Dec 2019 20:51:08 -0500
Message-Id: <D8935037-8A59-4A64-9C35-52486DC01015@lca.pw>
References: <1577669436.25204.8.camel@mtkswgap22>
In-Reply-To: <1577669436.25204.8.camel@mtkswgap22>
To: Miles Chen <miles.chen@mediatek.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_175112_170118_03182C71 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



> On Dec 29, 2019, at 8:30 PM, Miles Chen <miles.chen@mediatek.com> wrote:
> 
> Yes, printing top 10 will be too much. That's why I print only the
> greatest consumer, and test if this approach works.
> 
> I will resend this patch after the break. Let's wait for others'
> comments?

Sure, but to make my point clear.

Nacked-by: Qian Cai <cai@lca.pw>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

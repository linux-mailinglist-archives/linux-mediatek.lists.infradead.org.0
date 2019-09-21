Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591E6B9D1E
	for <lists+linux-mediatek@lfdr.de>; Sat, 21 Sep 2019 11:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLHbJvaeIQ/XOXOnOtLh1NeXI6ZcQte50DB8FZEk4jc=; b=Mo7h93lnhNjsdx
	qw5zYTu/6KDbbAQWDtuUe+QdtBUR/QE1S/axFjXi4f50jNDmQmJb0MCgIYR6m3NbSSIAtyiP3iMrQ
	D3BPC/zzM84XMyaJE5rbN/GXd3IsiaIGgayg6teBxq4YT1x+qAy3OlQ+jSPoINF3/xuR7/ApS6u73
	XK4T5kVlVjd/aKcycj4SkMdT13xfDmds1nP6kAKapHkn391Eb9FfmbVjSVu8nbYM1xSDGegnqkre2
	V0pjT+zk2cXYRFWaJicHu4os/WEVqLOY/JqBdKHn+1kNKG8Jjl0a4UOjxRaC3d3d78Cwc8TnEGN4r
	Cb59jdY5ENpp9DgJYa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBbOA-0007tT-Ka; Sat, 21 Sep 2019 09:09:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBbO5-0007sz-FB
 for linux-mediatek@lists.infradead.org; Sat, 21 Sep 2019 09:09:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id y22so6153310pfr.3
 for <linux-mediatek@lists.infradead.org>; Sat, 21 Sep 2019 02:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=LKS6iRhORtVWtWzPRk2V93JoQAB4JDX0z138KY8j8Ak=;
 b=SkyMdLbVZeuAeURGdY/fK7VUmGBH5duim15ZdpccY6a9VaRa7ysYDVaA7VUcqecynC
 NSpY6XX7eKwmBaeUoQsRnsl8Ko0gjuRoRIAfs8u3KYHs5i2OYzOw/fFTozNtkUaCu2uQ
 yNNr+zvypRK5jh7JvO6BN0ixVJ+hDH1K+zQEW1ntYn0IoTebzEtKHcjp1P948b9Mwn5K
 FZwnxU3syHnu79tDtL0nisC7ArTpimgR+i6/Y1d2xBOG+X3gSt6oxZptCPjK9AUW2rlQ
 f2zDP2C8ZNKIQHotlvns49lEBLnfHOyh03czL/hGG2EChz39ihxw7K/DIedL8LuJxDrb
 zehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=LKS6iRhORtVWtWzPRk2V93JoQAB4JDX0z138KY8j8Ak=;
 b=UdwZEQ/7O5U0aYl290PQ/j11INEmYyVNPHsMu531go3fm8IceMrNsp00LKv45YhULV
 5m84ZXytP9Nx7du9kamAwEMUTNXKiCs8X9wxV8Fytn8CQoB5s/IP+/DxrxhfuhZYHl1q
 7751f3ztjKpHFVg2364ypoagKKGz8bZ8x7wkIxJ1K82/C9og1b99Xwkl4KaUULjvJiD6
 XVR3x2TWK75aC5UHVCPn3JO4lUo/V/Rlg1Y+4xqCZvN8XS456DoVMo6s2o5T8aiRTV9e
 eADZDF9Cq7kYci2h0wMXJoThh8X39EnhydIN1UqGoKx91WU1FD5xn818HNHpXQdvZrfV
 SxoA==
X-Gm-Message-State: APjAAAXpEgwIfCd5hWoPSnI6WvjGk0Hzwi5wOn2Kj5CoQbvJiY8LxA/W
 kEI9aQEqvO6G3brbDHlleqr8wA==
X-Google-Smtp-Source: APXvYqyDG2iSDN+jBYdCL3+alE/9Xq3bNU+YDf3e+OZLkMg4U9lsu0+pJcxGpuPE3fYiB4Uxvo8gvQ==
X-Received: by 2002:a63:6a81:: with SMTP id
 f123mr19648574pgc.348.1569056941451; 
 Sat, 21 Sep 2019 02:09:01 -0700 (PDT)
Received: from [2620:15c:17:3:3a5:23a7:5e32:4598]
 ([2620:15c:17:3:3a5:23a7:5e32:4598])
 by smtp.gmail.com with ESMTPSA id w69sm6951409pgd.91.2019.09.21.02.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 02:09:00 -0700 (PDT)
Date: Sat, 21 Sep 2019 02:08:59 -0700 (PDT)
From: David Rientjes <rientjes@google.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH] mm: slub: print_hex_dump() with DUMP_PREFIX_OFFSET
In-Reply-To: <20190920104849.32504-1-miles.chen@mediatek.com>
Message-ID: <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
References: <20190920104849.32504-1-miles.chen@mediatek.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_020905_782438_A90B8D8F 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrew Morton <akpm@linux-foundation.org>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Pekka Enberg <penberg@kernel.org>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019, Miles Chen wrote:

> Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
> The use DUMP_PREFIX_OFFSET instead of DUMP_PREFIX_ADDRESS with
> print_hex_dump() can generate more useful messages.
> 
> In the following example, it's easier get the offset of incorrect poison
> value with DUMP_PREFIX_OFFSET.
> 
> Before:
> Object 00000000e817b73b: 00 00 00 00 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000000816f4601: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000000169d2bb8: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000000f4c38716: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000000917e3491: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000000c0e33738: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 000000001755ddd1: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> 
> After:
> Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000010: 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> 
> I think it might be worth to convert all DUMP_PREFIX_ADDRESS to
> DUMP_PREFIX_OFFSET for the whole Linux kernel.
> 

I agree it looks nicer for poisoning, I'm not sure that every caller of 
print_section() is the same, however.  For example trace() seems better 
off as DUMP_PREFIX_ADDRESS since it already specifies the address of the 
object being allocated or freed and offset here wouldn't really be useful, 
no?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

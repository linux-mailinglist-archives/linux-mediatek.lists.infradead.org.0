Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791711B51C4
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 03:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pZen7Pfm2vQoWVPhxudiOR86UYZ5iFVVEYg973n8xl8=; b=AN0tLy/5OP+zjjhngz/1V4ZQV
	wMSRSLkP+/lLhRaNzT1nqoEExg+itIqhwYXle6HCFtqq/wyaDeFQKKpbT1gK6Z4ahJuUawCkJ1tpj
	BU28EXxKDTLCxEb39P1OIz05qzWbeO7YZfGWa97723iczufpCfXXYPMD+JiwJP8zOhm36EdFZ+v5V
	kljEeLmYEhulL/XYhsQUhnT4A9ys5hYG8B6pYXGFkrzNCDaawInBDBjLQNfe8eU6usF7rAESd+fdy
	Tmvh17R63ls5eZysXI9jjWr/YipHwOslzNMAxhJBqAQEZnBynMSFwEto8T0PjwA8k2FIRWMIxtESt
	Ia6h95l7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQYL-0007Cz-Kj; Thu, 23 Apr 2020 01:21:21 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQYI-0007BL-CE; Thu, 23 Apr 2020 01:21:19 +0000
Received: by mail-pg1-f194.google.com with SMTP id x26so2030042pgc.10;
 Wed, 22 Apr 2020 18:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HuA0hxQTe90PJtZs9WSSy8kDWUbxSlnvi9VsPza7S2Y=;
 b=ZDTujw6fZ5jY3XQ65wjFG3v3OifNL8dO72xLpax9866UPGEHX+COqqw8MbkahcsvKK
 +YsqnpA8Ehg+MZn+MG5eYsYvN5OsFOBCjiedGHVCXf4UKWL5NxqksXplCpV3Zc5x7OMa
 NRONt1Ytv3x8F4tiCbsBGVvEDTdGr4+iS2c7Fu+HkLzQzARQCTzqcjsXaXRvbmAoRajw
 ITyL8J4FoZ6XgaTCUKjOEkCmIOoHocqNy6GAYEdz3atKIJxKKM7ZzdbQFOtaa7U+acbB
 UUe2UZwurfNkZ35YUBl9Y6Vw9p7kGHy3h26j7F0bm9fKXT8cZWwxE4/HdhLvtamz5qBq
 Y0Hw==
X-Gm-Message-State: AGi0PuZrSeekER0SbnDA//1TTcYQFU/GcTgR55vmu4fibCDU12yAJpJu
 j+1X7JfhuGmqtyIMIzspyxs=
X-Google-Smtp-Source: APiQypKxBlGRT0F6vEFPhi5oneOUM697xMXU65q00ggKMra7UIbFqy/Kx++vjPJ34SrVHIxn8OpClA==
X-Received: by 2002:aa7:80cf:: with SMTP id a15mr1441540pfn.124.1587604876968; 
 Wed, 22 Apr 2020 18:21:16 -0700 (PDT)
Received: from [100.124.12.67] ([104.129.198.222])
 by smtp.gmail.com with ESMTPSA id n23sm471545pjq.18.2020.04.22.18.21.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 18:21:16 -0700 (PDT)
Subject: Re: [PATCH v2] stacktrace: cleanup inconsistent variable type
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200421013511.5960-1-walter-zh.wu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d2a9f155-f309-0182-73c9-5c02d7014574@acm.org>
Date: Wed, 22 Apr 2020 18:21:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200421013511.5960-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_182118_418106_091EF4D1 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bart.vanassche[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream <wsd_upstream@mediatek.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 4/20/20 6:35 PM, Walter Wu wrote:
> Modify the variable type of 'skip' member of struct stack_trace.
> In theory, the 'skip' variable type should be unsigned int.
> There are two reasons:
> - The 'skip' only has two situation, 1)Positive value, 2)Zero
> - The 'skip' of struct stack_trace has inconsistent type with struct
>    stack_trace_data, it makes a bit confusion in the relationship between
>    struct stack_trace and stack_trace_data.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F370AE703
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 11:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lvsn79zxYnGG4iSDKa5584uvxZ9X8hu04NDHf6ddMk8=; b=RStftiZkZx7/gV
	1YyeKsHo3kS3Rk6lFC2fSzo8Th+brIWmhIhORN2HLyNjmdSoflUzlOLRiu/K/qjZXflu4tuzLAFNk
	A7sOlq7qCc2rkcybyqN2VVOdFzSIjXd4kDv76ACxSWu3p4CFDQ6apLzKlogsc1uOZmzRtPIpfPLKX
	jm9Sd1DYgKKtI83VGwtW7u3XykQgYP8B5X731WQP7BB7SA27M+CpgbxqwK9yQUh/M8lLpYgaab/nZ
	KdTWFmzfNvK2jeLvt1QUGzgZII6TyWCSizW1+oTZURSLQLHlforqLeGJ+fDIT3s7KC/Wv9Fp3J+bj
	MFk3TR6DRKxhV3oQ5Sqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cUe-00061y-6y; Tue, 10 Sep 2019 09:31:24 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cUL-0005su-SH
 for linux-mediatek@lists.infradead.org; Tue, 10 Sep 2019 09:31:07 +0000
Received: by mail-ed1-x542.google.com with SMTP id c19so16354020edy.10
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Sep 2019 02:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nPUEYX1NKslohD2E+roi3GND2/I3OUXfvQ3XAcK+/GA=;
 b=SSNNjgPQ1LSHIFhAfZd4y0wYr0+CC4ozBTywesC/p7SttOr6N2R7mXpSTeUG7e5Asp
 r8Y/5rQ+0c4hRlG2zqaksGhlUOxOHvFvcWaPcfWbBQRLfk9F4xEpKsfnIlW6rWvwKohN
 RNGw0IM/rKcv+cvba+nXEbQz0fbZXP6AHWb68cHXdh8ePHUYqx+2OqRBCekHgvlyW+Sw
 P8Vkg+ZokeeLku2jJcT4X/bYAzCp+7R5R7yHqtsOA3sn6/NIShlu4GVTrZyZ9adTF5QC
 J0N4aHa7o44cenXBoTu5Me3EkOwY3YbZwKPp5kN8YgRpX8rQ34t4N+SuVkQb/4NR5Mgv
 w3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nPUEYX1NKslohD2E+roi3GND2/I3OUXfvQ3XAcK+/GA=;
 b=h0rBCqMEWlbtoyCQdSJqRmJRaPq7gs89BUy8j66Fxuop92PP7f5K712wqzSs0y0SYb
 R0kjB8SFH/eed8CMgyM4vjb0bFrGlPqvn81ZtMPOKb23P6eNOE4uFAD/4kEfyPlqb4rg
 /R4x3Yu4YJyeiPoYyZTK1kKGyQKLTdzAo+3jFLJIRo5G3iifu6D+UpXmj44TGVyVsLuM
 +8Qs+r6Ju7IihBzXj/6meKyN8GkkEvSDKWqlo8nJJSIjfZ7Tlfejds5hqFEa+Acvind6
 iDTdh4IPG+U3eVvE5xf/gO6JfDJvOuAJnv+P8ciwVLV93EQWfZSabR/Ezad4XKzPLF4S
 bsJQ==
X-Gm-Message-State: APjAAAW6nog0tXw53y+P9MHnP1HyhU60ivaRR7qczgVJZIoZSU/DfXCo
 /OyxC85zLAgcDj8T7asPSKQCrikiFBN6iA==
X-Google-Smtp-Source: APXvYqxCHutpkbRJfLAOgIJs9EabO82Ve9zSCkPCIkSC3X5ZdrOL0QaU2or0dKk75rTzC1h9BCUrgw==
X-Received: by 2002:a17:906:4f04:: with SMTP id
 t4mr23891798eju.190.1568107863856; 
 Tue, 10 Sep 2019 02:31:03 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id u27sm3463898edb.48.2019.09.10.02.31.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 02:31:03 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 9F3511009F6; Tue, 10 Sep 2019 12:31:03 +0300 (+03)
Date: Tue, 10 Sep 2019 12:31:03 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH v2 1/2] mm/page_ext: support to record the last stack of
 page
Message-ID: <20190910093103.4cmqk4semlhgpmle@box.shutemov.name>
References: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
 <36b5a8e0-2783-4c0e-4fc7-78ea652ba475@redhat.com>
 <1568077669.24886.3.camel@mtksdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568077669.24886.3.camel@mtksdccf07>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_023105_920466_63166897 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, David Hildenbrand <david@redhat.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 09:07:49AM +0800, Walter Wu wrote:
> On Mon, 2019-09-09 at 12:57 +0200, David Hildenbrand wrote:
> > On 09.09.19 10:53, Walter Wu wrote:
> > > KASAN will record last stack of page in order to help programmer
> > > to see memory corruption caused by page.
> > > 
> > > What is difference between page_owner and our patch?
> > > page_owner records alloc stack of page, but our patch is to record
> > > last stack(it may be alloc or free stack of page).
> > > 
> > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > ---
> > >  mm/page_ext.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/mm/page_ext.c b/mm/page_ext.c
> > > index 5f5769c7db3b..7ca33dcd9ffa 100644
> > > --- a/mm/page_ext.c
> > > +++ b/mm/page_ext.c
> > > @@ -65,6 +65,9 @@ static struct page_ext_operations *page_ext_ops[] = {
> > >  #if defined(CONFIG_IDLE_PAGE_TRACKING) && !defined(CONFIG_64BIT)
> > >  	&page_idle_ops,
> > >  #endif
> > > +#ifdef CONFIG_KASAN
> > > +	&page_stack_ops,
> > > +#endif
> > >  };
> > >  
> > >  static unsigned long total_usage;
> > > 
> > 
> > Are you sure this patch compiles?
> > 
> This is patchsets, it need another patch2.
> We have verified it by running KASAN UT on Qemu.

Any patchset must be bisectable: do not break anything in the middle of
patchset.

-- 
 Kirill A. Shutemov

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

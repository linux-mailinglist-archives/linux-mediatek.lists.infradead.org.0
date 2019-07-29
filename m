Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906DA78830
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 11:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9dxwGMrfqG4VCLqEFWYYuwRtjM+IZbsp3j2Cy7tdJw=; b=swUNZWHVik5mtF
	Mv3UcT5WDtBIYw7mZ8xaVimj9foiUC0hCZVsM5+JWDLIvm5i3sHk1i3frPzuYLFtwkT0acSNvxDiW
	SzAWxY/bGHWQGhMXvs9PHp+KG5ivszhyboiTTdgWyl2s/KYJDhuN2MeSmclKL8IysxGwknUgNM57t
	i97vbA4Wkd6tsOaakUNDwC21fqlb8qI6Z7xZqYo31pfxkAAwkVykZEfHAS+CkfnfPGE8sRRvpE9m7
	rYrY9dp/8ue7z/zm2B9oKbfqtM3/WYWDZzKUaxH107JZrOstRgxzmzX0LeEBE/04IdVk5AW0Abo8R
	K1PuNkbYk8MglxBOPyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1pM-0002ok-P0; Mon, 29 Jul 2019 09:20:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1pJ-0002nm-5t
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 09:20:18 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so27243480plz.13
 for <linux-mediatek@lists.infradead.org>; Mon, 29 Jul 2019 02:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3alocEzQkvOwDh436VckIPvqKCkr1/ONfYhyc3HCC6U=;
 b=lP5GqG55Dyw5q7dJRePrFeD4Vo+xWMP9VbWvK9qbiZWztz9sX0u3JEEg9bwi3Qelv/
 K4Bbd4gXh8SI2XTM6SudJHqwrUpriyQVaKkV7Q3w2QBfJs8/ksKNgnNvs8Kq17eqjGwO
 IZkacmtTUtHNlN+nSxwxrtuInYWAaQidOdLLAxd0ULiL+dCihfleLcIWD8iL4SXRSWme
 +Z5O2ciwWgeBg1W61hhEY6T5YtIPR7YzHvKtiZ0AipJOglTfkqdaipfmVVjMudZz4i2O
 6O3PlX4Te4WeGuVUDovJAGSfp0T/xmiChZDDLIjKbsExzEe656X+11lNfimOHjyxlKgy
 eW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3alocEzQkvOwDh436VckIPvqKCkr1/ONfYhyc3HCC6U=;
 b=jWDo8r9p0tw1ev8BH2rUC74SQBqHuYOxLbNVI3NFJTiBXe2xHWKWWlFQP5jjuedGmg
 BYKxp3uU/DToD9MmNDJNvDEGVKBBfg666PjxoDWYWUKoEDXwXNacombgmiNn5nwnJcoC
 /ylQI+G55xq2vU3T1U6Dr0ehUm6ickG8stRGwH6tkHbBlHoZFrLslMtN8wWbZaHnmRLV
 VLkXGhCM37Y5DDG3THYOHE1x7RMnEEQmpN32uHZkvMGZvwJ6QZ1l5ztpdq+v+LwzMDAR
 PMW9+ZiMBu1Z7H9R+2uSA+zFYEkijFFiflXP4H33pF3ncHPV7B0VegHzibg0X9ImMvz3
 HYWg==
X-Gm-Message-State: APjAAAVYktuJUnAjQfnKQtZHdKbBQvd7hMvZix+UR/1G4nMHGbv7SneJ
 frOB5wiMPIJLpUbCQ6xwLty9mw==
X-Google-Smtp-Source: APXvYqzKLa/htnlBgwYP5UIMstM9Hmp8PWyPwF3BGDnYJXIAoSflXEa4GnCszC/9bxndDaHastGyKw==
X-Received: by 2002:a17:902:3103:: with SMTP id
 w3mr111071711plb.84.1564392016316; 
 Mon, 29 Jul 2019 02:20:16 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id m4sm73215197pgs.71.2019.07.29.02.20.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 02:20:15 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:50:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20190729092013.5sz2mdqicrit5nta@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-7-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190520044704.unftq6q5vy73z5bo@vireshk-i7>
 <1564371555.18434.11.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564371555.18434.11.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_022017_215987_1CBF3A19 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Andrew-sh Cheng =?utf-8?B?KOmEreW8j+WLsyk=?=
 <andrew-sh.cheng@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Stephen Boyd <sboyd@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, yt.lee@mediatek.com,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 29-07-19, 11:39, Roger Lu wrote:
> Dear Stephen Boyd,
> 
> This patch is derived from [1]. Please kindly shares the suggestion to
> us. Thanks very much.
> 
> [1]: https://lore.kernel.org/patchwork/patch/599279/
> 
> Dear Viresh,
> 
> I followed _opp_set_availability() coding style to refine
> dev_pm_opp_adjust_voltage() from this patch. Is this refinement suitable
> for OPP core? Thanks a lot.

Looks okay from a quick look.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

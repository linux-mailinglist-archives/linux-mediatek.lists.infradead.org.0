Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E03C1483F1
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Jan 2020 12:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdJKZnRWDQPo7lFnwjcHf8IFcmQz1PW1AKr6CMcG5yM=; b=FjNHBH1gVHgrBh
	Nn8XAtW7qt0PHumPryNIikitsiodqOcQh5+xvHyLrSJlAZb8otFNRP8VJn9VWE57bvxC0Lvwbr303
	BnnrrHVuZtTea+qMfjpTT+wrfZBMkQRUOFC6B1D7ckl7vo+1hpTOU7PnwJWw2t9ssByPSheZ07dhh
	BkWMYjZQjEG16BZR5d5GBTgyZwiQPt/Zq9+hJczcPcNrHulIV+y+RqWOvMiORWUq//1h3wGBNi5YV
	PUnkDu86qqZXisSMWzojiy39H7YnjCQ3KsLDFHZLviCsJsUbSEOwKmcOnlUUJf6hIVKNLKcV1Hnc1
	crrQ55axVVAQc7r2jCAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxKk-0004ld-TK; Fri, 24 Jan 2020 11:41:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxKD-0004Fg-A3; Fri, 24 Jan 2020 11:40:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 75869ACB1;
 Fri, 24 Jan 2020 11:40:29 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH v2 0/3] cgroup: Iterate tasks that did not finish do_exit()
Date: Fri, 24 Jan 2020 12:40:14 +0100
Message-Id: <20200124114017.8363-1-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120145635.GA30904@blackbody.suse.cz>
References: <20200120145635.GA30904@blackbody.suse.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_034033_492975_E5599820 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, surenb@google.com, tj@kernel.org,
 lizefan@huawei.com, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, hannes@cmpxchg.org, matthias.bgg@gmail.com,
 alex.shi@linux.alibaba.com, kernel-team@android.com, guro@fb.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksCnRoYW5rcyBmb3IgeW91ciBmZWVkYmFjay4gSSdtIHNlbmRpbmcgdXBkYXRlZCBzb2x1dGlv
biB0aGF0IGNoYW5nZXMgdGFzawppdGVyYXRpb24gdG8gYmUgY29uc2lzdGVudCB3aXRoIGNncm91
cF9pc19wb3B1bGF0ZWQoKSBjaGVjayBhbmQgbW92aW5nIHRoZQpyZXNwb25zaWJpbGl0eSB0byBj
aGVjayBQRl9FWElUSU5HIG9uIHRoZSBjb25zdW1lcnMgb2YgaXRlcmF0b3IgQVBJLgoKQ2hhbmdl
cyBmcm9tIHYxCi0gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDAxMTcxNTE1
MzMuMTIzODEtMS1ta291dG55QHN1c2UuY29tLwotIFN3YXAgdGhlIGZpeGluZyBhbmQgcmVmYWN0
b3JpbmcgcGF0Y2ggKGluIG9yZGVyIHRvIG1ha2UgdGhlIGZpeCBlYXNpZXIgZm9yCiAgYmFja3Bv
cnQpCi0gRG9uJ3QgaW50cm9kdWNlIHRhc2tzIGxpc3RzIGFycmF5IGJlY2F1c2Ugb2YgdW5uZWNl
c3NhcmlseSBsb25nIGFjY2VzcyBjb2RlCi0gRml4IGNvbW1lbnQgaW4gc2VsZnRlc3QKLSBJIGxl
YXZlIHRoZSBDQzpzdGFibGUgb24gZGlzY3JldGlvbiBvZiB0aGUgbWFpbnRhaW5lcgoKTWljaGFs
IEtvdXRuw70gKDIpOgogIGNncm91cDogSXRlcmF0ZSB0YXNrcyB0aGF0IGRpZCBub3QgZmluaXNo
IGRvX2V4aXQoKQogIGNncm91cDogQ2xlYW4gdXAgY3NzX3NldCB0YXNrIHRyYXZlcnNhbAoKU3Vy
ZW4gQmFnaGRhc2FyeWFuICgxKToKICBrc2VsZnRlc3QvY2dyb3VwOiBhZGQgY2dyb3VwIGRlc3Ry
dWN0aW9uIHRlc3QKCiBpbmNsdWRlL2xpbnV4L2Nncm91cC5oICAgICAgICAgICAgICAgICAgICAg
fCAgIDQgKy0KIGtlcm5lbC9jZ3JvdXAvY2dyb3VwLmMgICAgICAgICAgICAgICAgICAgICB8ICA2
MCArKysrKystLS0tLQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvY2dyb3VwL3Rlc3RfY29yZS5j
IHwgMTEzICsrKysrKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxNDYgaW5zZXJ0
aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
